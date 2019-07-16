package cn.zykj.cloud.service;

import cn.zykj.cloud.entity.CountStudentPoint;
import cn.zykj.cloud.entity.IndexPoint;
import cn.zykj.cloud.entity.Score;
import cn.zykj.cloud.entity.TeachingProgram;
import cn.zykj.cloud.mapper.ScoreMapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.poi.ss.usermodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author Olaf
 * @since 2018-12-03
 */
@Service
public class ScoreService extends ServiceImpl<ScoreMapper, Score> {

    @Autowired
    private TeachingProgramService teachingProgramService;
    @Autowired
    private IndexPointThService indexPointThService;
    @Autowired
    private IndexPointService indexPointService;
    @Autowired
    private CountClassPointService countClassPointService;

    private String zhuanzifu(Cell idx, FormulaEvaluator evaluator) {
        DataFormatter formatter = new DataFormatter();
        return formatter.formatCellValue(idx, evaluator);
    }

    /**
     * 上传成绩文件
     *
     * @param file
     * @param classID
     * @param method
     * @return
     */
    public boolean uploadScore(MultipartFile file, String year, String major, String courseName, String className, String method) {
        try {
            List<Score> list = new ArrayList<>();
            List<String> thList = new ArrayList<>();
            List<String> pfList = new ArrayList<>();
            List<String> zfList = new ArrayList<>();
            List<IndexPoint> indexPoints = indexPointService.getCourseNamePoint(year, major, courseName);
            Workbook workbook = WorkbookFactory.create(file.getInputStream());
            FormulaEvaluator evaluator = workbook.getCreationHelper().createFormulaEvaluator();
            Sheet sheet = workbook.getSheetAt(0);
            int rowNum = sheet.getLastRowNum();
            int colNum = sheet.getRow(0).getLastCellNum();
            Double stu = Double.valueOf(rowNum - 2);
            Row row = null;
            String th = null;
            String pf = null;
            String df = null;
            for (int i = 2; i < colNum; i++) {
                th = zhuanzifu(sheet.getRow(0).getCell(i), evaluator);
                pf = zhuanzifu(sheet.getRow(1).getCell(i), evaluator);
                Double zdf = 0.0;
                for (int j = 3; j <= rowNum; j++) {
                    df = zhuanzifu(sheet.getRow(j).getCell(i), evaluator);
                    zdf = zdf + Double.parseDouble(df);
                }
                thList.add(th);
                pfList.add(pf.equals("") ? "0" : pf);
                zfList.add(String.valueOf(zdf));
            }

            for (int i = 3; i <= rowNum; i++) {
                row = sheet.getRow(i);
                if (StringUtils.isEmpty(row))
                    continue;
                for (int j = 2; j < colNum; j++) {
                    Score score = new Score();
                    score.setYear(year);
                    score.setMajor(major);
                    score.setCourseName(courseName);
                    score.setClassName(className);
                    score.setMethod(method);
                    score.setSno(zhuanzifu(row.getCell(0), evaluator).trim());
                    score.setSname(zhuanzifu(row.getCell(1), evaluator).trim());
                    score.setTh(thList.get(j - 2).trim());
                    score.setPf(pfList.get(j - 2).trim());
                    df = zhuanzifu(row.getCell(j), evaluator).trim();
                    score.setScore(df.equals("") ? "0" : df);
                    list.add(score);
                }
            }
            baseMapper.delete(new QueryWrapper<Score>().lambda()
                    .eq(Score::getYear, year)
                    .eq(Score::getMajor, major)
                    .eq(Score::getCourseName, courseName)
                    .eq(Score::getClassName, className)
                    .eq(Score::getMethod, method));
            indexPointThService.uploadPointTh(year, major, courseName, className, method, thList, pfList, zfList);
            countClassPointService.uploadPointDcd(year, major, courseName, className, method, indexPoints, String.valueOf(stu));
            return this.saveOrUpdateBatch(list);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /**
     * 获取学生信息
     *
     * @param classID
     * @return
     */
    public List<Score> getClassStudent(String year, String major, String courseName, String className) {
        return baseMapper.getClassStudent(year, major, courseName, className);
    }

    /**
     * 获取这个学生题号的等分
     *
     * @param classID
     * @param sno
     * @param th
     * @param method
     * @return
     */
    public List<Score> getClassThScore(String year, String major, String courseName, String className, String sno, String th, String method) {
        return baseMapper.selectList(new QueryWrapper<Score>().lambda()
                .eq(Score::getYear, year)
                .eq(Score::getMajor, major)
                .eq(Score::getCourseName, courseName)
                .eq(Score::getClassName, className)
                .eq(Score::getSno, sno)
                .eq(Score::getTh, th)
                .eq(Score::getMethod, method));
    }

    public int deleteScore(String year, String major, String courseName, String className, String method) {
        return baseMapper.delete(new QueryWrapper<Score>().lambda()
                .eq(Score::getYear, year)
                .eq(Score::getMajor, major)
                .eq(Score::getCourseName, courseName)
                .eq(Score::getClassName, className)
                .eq(Score::getMethod, method));
    }

    public List<Score> getMajorClassName(String className, String courseName) {
        return baseMapper.getMajorClassStudent(className, courseName);
    }

    public List<Score> getAllMajorClassName(String className) {
        return baseMapper.getAllMajorClassStudent(className);
    }

    public List<Score> getAllStudentScore(String year, String major, String courseName, String className) {
        return baseMapper.selectList(new QueryWrapper<Score>().lambda()
                .eq(Score::getYear, year)
                .eq(Score::getMajor, major)
                .eq(Score::getCourseName, courseName)
                .eq(Score::getClassName, className));
    }

    public Score getStudentScore(String year, String major, String courseName, String className, String method, String sno, String th) {
        return baseMapper.selectOne(new QueryWrapper<Score>().lambda()
                .eq(Score::getYear, year)
                .eq(Score::getMajor, major)
                .eq(Score::getCourseName, courseName)
                .eq(Score::getClassName, className)
                .eq(Score::getMethod, method)
                .eq(Score::getSno, sno)
                .eq(Score::getTh, th));
    }
}
