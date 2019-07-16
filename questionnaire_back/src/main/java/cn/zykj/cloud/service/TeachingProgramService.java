package cn.zykj.cloud.service;

import cn.zykj.cloud.entity.TeachingProgram;
import cn.zykj.cloud.entity.Users;
import cn.zykj.cloud.mapper.TeachingProgramMapper;
import cn.zykj.cloud.utils.Constants;
import cn.zykj.cloud.utils.PassUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import org.apache.poi.ss.usermodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.InputStreamReader;
import java.util.*;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author Olaf
 * @since 2018-11-18
 */
@Service
public class TeachingProgramService extends ServiceImpl<TeachingProgramMapper, TeachingProgram> {

    @Autowired
    private IndexPointService indexPointService;
    @Autowired
    private ScoreService scoreService;
    @Autowired
    private IndexPointThService indexPointThService;
    @Autowired
    private CountStudentPointService countStudentPointService;
    @Autowired
    private CountClassPointService countClassPointService;

    /**
     * 查询教学计划
     *
     * @param major
     * @param year
     * @return
     */
    public List<TeachingProgram> getTeachingProgram(String major, String year) {
        return baseMapper.selectList(new QueryWrapper<TeachingProgram>().lambda().eq(TeachingProgram::getMajor, major).eq(TeachingProgram::getYear, year));
    }

    /**
     * 获取所有课程名(标注错误课程名)
     *
     * @param major
     * @return
     */
    public List<Map<String, Object>> getTeachingProgramCourseName(String major, String year) {
        List<Map<String, Object>> maps = new ArrayList<>();
        String[] indexPointName = indexPointService.getCourseName(major, year);
        String[] courseType = baseMapper.getTeachingProgramCourseType(major, year);
        List<TeachingProgram> teachingName = baseMapper.getTeachingProgramCourseName(major, year);
        for (String c : courseType) {
            Map<String, Object> map = new HashMap<>();
            List<Map<String, Object>> mapList = new ArrayList();
            map.put("courseType", c);
            for (TeachingProgram p : teachingName) {
                if (c.equals(p.getCourseType())) {
                    Map<String, Object> cp = new HashMap<>();
                    cp.put("courseName", p.getCourseName());
                    cp.put("checked", false);
                    for (String o : indexPointName) {
                        if (p.getCourseName().equals(o)) {
                            cp.put("key", true);
                            break;
                        }
                    }
                    mapList.add(cp);
                }
            }
            map.put("course", mapList);
            maps.add(map);
        }
        return maps;
    }

    /**
     * 插入教学计划
     *
     * @param file
     * @param major
     * @param year
     * @return
     */
    public boolean insertTeachingProgram(MultipartFile file, String major, String year) {
        try {
            List<TeachingProgram> teachingPrograms = new ArrayList<>();
            Workbook workbook = WorkbookFactory.create(file.getInputStream());
            Sheet sheet = workbook.getSheetAt(0);
            int num = sheet.getLastRowNum();
            Row row = null;
            for (int i = 1; i <= num; i++) {
                row = sheet.getRow(i);
                if (StringUtils.isEmpty(row))
                    continue;
                Cell className = row.getCell(0);
                Cell courseName = row.getCell(1);
                Cell teacherID = row.getCell(2);
                Cell teacherName = row.getCell(3);
                Cell courseType = row.getCell(4);
                Cell courseGrade = row.getCell(5);
                TeachingProgram teachingProgram = new TeachingProgram();
                teachingProgram.setYear(year);
                teachingProgram.setMajor(major);
                teachingProgram.setClassName(StringUtils.isEmpty(className) ? null : className.getStringCellValue().trim());
                teachingProgram.setCourseName(StringUtils.isEmpty(courseName) ? null : courseName.getStringCellValue().trim());
                teachingProgram.setAccount(StringUtils.isEmpty(teacherID) ? null : teacherID.getStringCellValue().trim());
                teachingProgram.setTeacherName(StringUtils.isEmpty(teacherName) ? null : teacherName.getStringCellValue().trim());
                teachingProgram.setCourseType(StringUtils.isEmpty(courseType) ? "未选择课程类型" : courseType.getStringCellValue().trim());
                teachingProgram.setMethods("平时成绩,期中考试,期末考试");
                teachingProgram.setGrade(StringUtils.isEmpty(courseGrade) ? null : courseGrade.getStringCellValue().trim());
                teachingPrograms.add(teachingProgram);
            }
            baseMapper.delete(new QueryWrapper<TeachingProgram>().lambda().eq(TeachingProgram::getYear, year).eq(TeachingProgram::getMajor, major));
            return this.saveOrUpdateBatch(teachingPrograms);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /**
     * 获取教学计划中的课程
     * @param account
     * @return
     */
    public List<Map<String, Object>> getTeacherCourse(String account) {
        List<TeachingProgram> courseList = baseMapper.getTeacherCourse(account);
        String[] Type = baseMapper.getTeacherCourseType(account);
        List<Map<String, Object>> maps = new ArrayList<>();
        for (String t : Type) {
            Map<String, Object> map = new HashMap<>();
            List<String> list = new ArrayList<>();
            map.put("courseType", t);
            for (TeachingProgram c : courseList) {
                if (c.getCourseType().equals(t)) {
                    list.add(c.getCourseName());
                }
            }
            map.put("courseName", list);
            maps.add(map);
        }
        return maps;
    }

    /**
     * 获取老师的所有课程
     * @param account
     * @param courseName
     * @return
     */
    public Map<String, Object> getTeacherClass(String account, String courseName) {
        List<TeachingProgram> teachingPrograms = baseMapper.selectList(new QueryWrapper<TeachingProgram>().lambda().eq(TeachingProgram::getAccount, account).eq(TeachingProgram::getCourseName, courseName));
        String[] year =  baseMapper.getTeacherClassYear(account, courseName);
        Map<String, Object> maps = new HashMap<>();
        for (String y : year) {
            List<TeachingProgram> ts = new ArrayList<>();
            for (TeachingProgram t : teachingPrograms) {
                if (t.getYear().equals(y)) {
                    ts.add(t);
                }
            }
            maps.put(y, ts);
        }
        return maps;
    }

    /**
     * 获取老师课程对应的班级
     * @param account
     * @param year
     * @param courseName
     * @param className
     * @return
     */
    public TeachingProgram getTeacherClassInfo(String account, String year, String courseName, String className) {
        return baseMapper.selectOne(new QueryWrapper<TeachingProgram>().lambda().eq(TeachingProgram::getYear, year).eq(TeachingProgram::getAccount, account).eq(TeachingProgram::getCourseName, courseName).eq(TeachingProgram::getClassName, className));
    }

    /**
     * 根据ClassID获取对应信息
     * @param classID
     * @return
     */
    public TeachingProgram getTeacherInfoDetailed(String year, String major, String courseName, String className) {
        return baseMapper.selectOne(new QueryWrapper<TeachingProgram>().lambda()
        .eq(TeachingProgram::getYear, year)
        .eq(TeachingProgram::getCourseName, courseName)
        .eq(TeachingProgram::getClassName, className)
        .eq(TeachingProgram::getMajor, major));
    }

    /**
     * 更新考核类型
     * @param classInfo
     * @return
     */
    public boolean uploadMethods(String classInfo) {
        JSONArray jsonArray = JSONArray.fromObject(classInfo);
        List<TeachingProgram> teachingPrograms = JSONArray.toList(jsonArray, new TeachingProgram(), new JsonConfig());
        for (TeachingProgram t : teachingPrograms) {
            String[] newMethods = t.getMethods().split(",");
            String[] oldMethods = baseMapper.selectById(t.getId()).getMethods().split(",");

            for (String o : oldMethods) {
                if(Arrays.binarySearch(newMethods, o) < 0){
                    scoreService.deleteScore(t.getYear(), t.getMajor(), t.getCourseName(), t.getClassName(), o);
                    indexPointThService.deleteIndexPointTh(t.getYear(), t.getMajor(), t.getCourseName(), t.getClassName(), o);
                    countClassPointService.deleteCountClassPoint(t.getYear(), t.getMajor(), t.getCourseName(), t.getClassName(), o);
                    countStudentPointService.deleteCountStudentPoint(t.getYear(), t.getMajor(), t.getCourseName(), t.getClassName());
                }
            }
        }
        return this.saveOrUpdateBatch(teachingPrograms);
    }

    public String[] getMajorClassName(String major, String year) {
        return baseMapper.getMajorClassName(major, year);
    }

    public boolean updataTeaching(MultipartFile file, String year, String major, String courseGrade) {
        try {
            List<TeachingProgram> teachingPrograms = baseMapper.selectList(new QueryWrapper<TeachingProgram>()
                    .lambda().eq(TeachingProgram::getYear, year)
                    .eq(TeachingProgram::getMajor, major));
            Workbook workbook = WorkbookFactory.create(file.getInputStream());
            Sheet sheet = workbook.getSheetAt(0);
            int num = sheet.getLastRowNum();
            Row row = null;
            for (int i = 1; i <= num; i++) {
                row = sheet.getRow(i);
                if (StringUtils.isEmpty(row))
                    continue;
                Cell className = row.getCell(0);
                Cell courseName = row.getCell(1);
                Cell teacherID = row.getCell(2);
                Cell teacherName = row.getCell(3);
                Cell courseType = row.getCell(4);
                for (TeachingProgram t : teachingPrograms) {
                    if (t.getCourseName().equals(courseName.getStringCellValue().trim()) &&
                    t.getClassName().equals(className.getStringCellValue().trim())) {
                        t.setAccount(teacherID.getStringCellValue().trim());
                        t.setTeacherName(teacherName.getStringCellValue().trim());
                        t.setGrade(courseGrade);
                        t.setCourseType(courseType.getStringCellValue().trim());
                    }
                }
            }
            return this.saveOrUpdateBatch(teachingPrograms);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public int setCouseName(String Json, String major, String year) {
        JSONArray jsonArray = JSONArray.fromObject(Json);
        for (int i = 0; i < jsonArray.size(); i++) {
            JSONObject jsonObject = JSONObject.fromObject(jsonArray.get(i));
            if (jsonObject.get("value").toString().equals("remove")) {
                baseMapper.delete(new QueryWrapper<TeachingProgram>().lambda()
                .eq(TeachingProgram::getYear, year)
                .eq(TeachingProgram::getMajor, major)
                .eq(TeachingProgram::getCourseName, jsonObject.get("courseName").toString()));
            } else {
                baseMapper.setCourseName(jsonObject.get("value").toString(), jsonObject.get("courseName").toString(), major, year);
            }
        }
        return 1;
    }

    public String getMajorCourseGrade(String year, String major, String courseName, String className) {
        TeachingProgram teachingProgram = baseMapper.selectOne(new QueryWrapper<TeachingProgram>().lambda()
        .eq(TeachingProgram::getYear, year)
        .eq(TeachingProgram::getMajor, major)
        .eq(TeachingProgram::getCourseName, courseName)
        .eq(TeachingProgram::getClassName, className));
        return teachingProgram == null ? null : teachingProgram.getGrade();
    }

}
