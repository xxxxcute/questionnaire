package cn.zykj.cloud.service;

import cn.zykj.cloud.entity.IndexPoint;
import cn.zykj.cloud.entity.IndexPointMsg;
import cn.zykj.cloud.entity.TeachingProgram;
import cn.zykj.cloud.mapper.IndexPointMapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import org.apache.poi.ss.usermodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.util.*;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author Olaf
 * @since 2018-11-21
 */
@Service
public class IndexPointService extends ServiceImpl<IndexPointMapper, IndexPoint> {

    private TeachingProgramService teachingProgramService;
    private IndexPointMsgService indexPointMsgService;

    @Autowired
    public IndexPointService(TeachingProgramService teachingProgramService, IndexPointMsgService indexPointMsgService) {
        this.teachingProgramService = teachingProgramService;
        this.indexPointMsgService = indexPointMsgService;
    }

    /**
     * 删除课程
     *
     * @param indexPoint
     * @return
     */
    public int deleteCourseName(IndexPoint indexPoint) {
        return baseMapper.delete(new QueryWrapper<IndexPoint>().lambda().eq(IndexPoint::getYear, indexPoint.getYear()).eq(IndexPoint::getMajor, indexPoint.getMajor()).eq(IndexPoint::getCourseName, indexPoint.getCourseName()));
    }

    /**
     * 修改二级指标点描述信息
     *
     * @param indexPoint
     * @return
     */
    public int editCourseName(IndexPoint indexPoint) {
        return baseMapper.update(indexPoint, new QueryWrapper<IndexPoint>().lambda().eq(IndexPoint::getYear, indexPoint.getYear()).eq(IndexPoint::getMajor, indexPoint.getMajor()).eq(IndexPoint::getCourseName, indexPoint.getCourseName()));
    }

    /**
     * 修改矩阵课程信息
     * @param courseNames
     * @return
     */
    public boolean insertCourseNamePoint(String courseNames, String year, String major, String indexPointDot) {
        JSONArray jsonArray = JSONArray.fromObject(courseNames);
        List<IndexPoint> indexPoints = JSONArray.toList(jsonArray, new IndexPoint(), new JsonConfig());
        baseMapper.delete(new QueryWrapper<IndexPoint>().lambda()
                .eq(IndexPoint::getYear, year)
                .eq(IndexPoint::getMajor, major)
                .eq(IndexPoint::getIndexPointDot, indexPointDot));
        try {
            return this.saveOrUpdateBatch(indexPoints);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /**
     * 获取指标点矩阵中的课程
     *
     * @param major
     * @return
     */
    public String[] getCourseName(String major, String year) {
        return baseMapper.getIndexPointCourseName(major, year);
    }

    /**
     * 获取对应指标点的课程名
     *
     * @param major
     * @return
     */
    public List<IndexPoint> getCourseIndexPoint(String year, String major, String indexPoint) {
        return baseMapper.selectList(new QueryWrapper<IndexPoint>().lambda().eq(IndexPoint::getYear, year).eq(IndexPoint::getMajor, major).eq(IndexPoint::getIndexPointDot, indexPoint));
    }

    public List<IndexPoint> getIndexPoint(String year, String major) {
        return baseMapper.selectList(new QueryWrapper<IndexPoint>().lambda().eq(IndexPoint::getYear, year).eq(IndexPoint::getMajor, major));
    }

    public String[] getCourseIndexPoint(String year, String major) {
        return baseMapper.getIndexPoint(major, year);
    }

    public IndexPoint getCourseNamePoint(String courseNames, String year, String major, String indexPointDot) {
        return baseMapper.selectOne(new QueryWrapper<IndexPoint>().lambda().eq(IndexPoint::getMajor, major)
        .eq(IndexPoint::getYear, year)
        .eq(IndexPoint::getCourseName, courseNames)
        .eq(IndexPoint::getIndexPointDot, indexPointDot));
    }

        /**
         * 插入指标点
         *
         * @param file
         * @param major
         * @param year
         * @return
         */
    public boolean insertPoint(MultipartFile file, String major, String year) {
        try {
            List<IndexPoint> indexPoints = new ArrayList<>();
            List<String> listIndex = new ArrayList<>();
            DataFormatter dataFormatter = new DataFormatter();
            Workbook workbook = WorkbookFactory.create(file.getInputStream());
            Sheet sheet = workbook.getSheetAt(0);
            Map<String, String> map = new HashMap<>();
            map.put("L", "10");
            map.put("M", "20");
            map.put("H", "30");
            int num = sheet.getLastRowNum();
            Row row = null;
            if (!StringUtils.isEmpty(sheet.getRow(3))) {
                Row rowIndexPoint = sheet.getRow(3);
                for (int i = 1; i < rowIndexPoint.getLastCellNum(); i++) {
                    Cell idx = rowIndexPoint.getCell(i);
                    if (StringUtils.isEmpty(idx))
                        continue;
                    listIndex.add(dataFormatter.formatCellValue(idx).trim());
                }
            }
            for (int i = 4; i <= num; i++) {
                row = sheet.getRow(i);
                if (StringUtils.isEmpty(row))
                    continue;
                Cell courseName = row.getCell(0);
                if (courseName == null || courseName.equals("") || courseName.getCellTypeEnum() == CellType.BLANK)
                    continue;
                for (int j = 1; j < row.getLastCellNum(); j++) {
                    Cell cell = row.getCell(j);
                    if (cell == null || cell.equals("") || cell.getCellTypeEnum() == CellType.BLANK)
                        continue;
                    IndexPoint indexPoint = new IndexPoint();
                    indexPoint.setCourseName(StringUtils.isEmpty(courseName) ? null : courseName.getStringCellValue().trim());
                    indexPoint.setQz(cell.getStringCellValue().trim());
                    indexPoint.setBfb(map.get(cell.getStringCellValue().trim()));
                    indexPoint.setIndexPointDot(listIndex.get(j - 1));
//                    indexPoint.setPoint(Integer.parseInt(listIndex.get(j - 1).split("\\.")[0]));
                    indexPoint.setYear(year);
                    indexPoint.setMajor(major);
                    indexPoints.add(indexPoint);
                }
            }
            HashSet hashSet = new HashSet(listIndex);
            List<IndexPointMsg> L1 = new ArrayList<>();
            List<IndexPointMsg> L2 = new ArrayList<>();
            listIndex.clear();
            listIndex.addAll(hashSet);
            for (String o : listIndex) {
                IndexPointMsg l2 = new IndexPointMsg();
//                l2.setPoint(o.split("\\.")[0]);
                l2.setPoint(o);
                l2.setMajor(major);
                l2.setYear(year);
                l2.setType("L2");
                L2.add(l2);
            }
            for (int i = 0; i < listIndex.size(); i++) {
                listIndex.set(i, listIndex.get(i).split("\\.")[0]);
            }
            HashSet h = new HashSet(listIndex);
            listIndex.clear();
            listIndex.addAll(h);
            for (String o : listIndex) {
                IndexPointMsg l1 = new IndexPointMsg();
                l1.setMajor(major);
                l1.setYear(year);
                l1.setPoint(o);
                l1.setType("L1");
                L1.add(l1);
            }
            indexPointMsgService.setPoint(L2);
            indexPointMsgService.setPoint(L1);
            baseMapper.delete(new QueryWrapper<IndexPoint>().lambda().eq(IndexPoint::getYear, year).eq(IndexPoint::getMajor, major));
            return indexPoints.size() != 0 ? this.saveOrUpdateBatch(indexPoints) : true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

    }

    /**
     * 获取指标点矩阵
     * @param year
     * @param major
     * @return
     */
    public List<List<Map<String, Object>>> getMajorIndexPoint(String year, String major) {
        List<IndexPoint> indexPoints = getIndexPoint(year, major);
        String[] courseName = baseMapper.getIndexPointCourseName(major, year);
        String[] indexPoint = baseMapper.getIndexPoint(major, year);
        List<IndexPoint> qz = baseMapper.getIndexPointQz(major, year);
        List<List<Map<String, Object>>> ms = new ArrayList<>();
        List<Map<String, Object>> maps = new ArrayList<>();
        List<Map<String, Object>> lms = new ArrayList<>();
        Map<String, Object> lm = new HashMap<>();
        lm.put("indexPoint", indexPoint);
        lm.put("qz", qz);
        lms.add(lm);
        for (String c : courseName) {
            Map<String, Object> map = new HashMap<>();
            map.put("courseName", c);
            String[] index = indexPoint.clone();
            for (IndexPoint i : indexPoints) {
                if (i.getCourseName().equals(c)) {
                    for (int is = 0; is < index.length; is++) {
                        if (i.getIndexPointDot().equals(index[is])) {
                            index[is] = i.getQz();
                        }
                    }
                }
            }
            for (int im = 0; im < index.length; im++) {
                if (index[im].equals(indexPoint[im])) {
                    index[im] = null;
                }
            }
            map.put("indexPoint", index);
            maps.add(map);
        }
        ms.add(maps);
        ms.add(lms);
        return ms;
    }

    /**
     * 获取课程的指标点
     * @param classID
     * @return
     */
    public List<IndexPoint> getCourseNamePoint(String year, String major, String courseName) {
        return baseMapper.getCourseNamePoint(year, major, courseName);
    }

    public List<IndexPoint> getMajorStudentPoint(String year, String major) {
        return baseMapper.selectList(new QueryWrapper<IndexPoint>().lambda()
                .eq(IndexPoint::getYear, year)
                .eq(IndexPoint::getMajor, major)
                .orderByAsc(IndexPoint::getIndexPointDot));
    }

    public Map<String, String> getMajorPointsCourseNameNub(String year, String major) {
        String[] strings = baseMapper.getIndexPoint(major, year);
        Map<String, String> map = new HashMap<>();
        Integer total = 0;
        for (String o : strings) {
            map.put(o, getCourseIndexPoint(year, major, o).size() + "," + total);
            total = total + getCourseIndexPoint(year, major, o).size();
        }
        return map;
    }

    public boolean updataPointQz(String year, String major, String L, String M, String H) {
        List<IndexPoint> indexPoints = baseMapper.selectList(new QueryWrapper<IndexPoint>().lambda()
        .eq(IndexPoint::getYear, year)
        .eq(IndexPoint::getMajor, major));
        for (IndexPoint i : indexPoints) {
            switch (i.getQz()) {
                case "L": i.setBfb(L);break;
                case "M": i.setBfb(M);break;
                case "H": i.setBfb(H);break;
            }
        }
        return this.saveOrUpdateBatch(indexPoints);
    }

    public List<IndexPoint> getAllIndexPoint(String year, String major) {
        return baseMapper.getAllIndexPoint(year, major);
    }
}
