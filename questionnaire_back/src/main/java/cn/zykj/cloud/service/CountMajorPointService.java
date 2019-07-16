package cn.zykj.cloud.service;

import cn.zykj.cloud.entity.*;
import cn.zykj.cloud.mapper.CountMajorPointMapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.IService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author Olaf
 * @since 2019-01-26
 */
@Service
public class CountMajorPointService {

    @Autowired
    private IndexPointService indexPointService;
    @Autowired
    private CountStudentPointService countStudentPointService;
    @Autowired
    private IndexPointMsgService indexPointMsgService;
    @Autowired
    private CountClassPointService countClassPointService;

//    public List<CountMajorPoint> uploadMajorPoint(String year, String major, String className, String sno, String sname) {
//        baseMapper.delete(new QueryWrapper<CountMajorPoint>().lambda().eq(CountMajorPoint::getSno, sno));
//        List<IndexPoint> indexPoints = indexPointService.getMajorStudentPoint(year, major);
//        String[] is = indexPointService.getCourseIndexPoint(year, major);
//        List<CountMajorPoint> countMajorPoints = new ArrayList<>();
//        for (IndexPoint i : indexPoints) {
//            CountMajorPoint countMajorPoint = new CountMajorPoint();
//            CountStudentPoint countStudentPoint = countStudentPointService.getCountStudentPoint(year, major, i.getCourseName(), sno, i.getIndexPointDot());
//            countMajorPoint.setYear(i.getYear());
//            countMajorPoint.setMajor(i.getMajor());
//            countMajorPoint.setClassName(className);
//            countMajorPoint.setCourseName(i.getCourseName());
//            countMajorPoint.setPoint(i.getIndexPointDot());
//            countMajorPoint.setSno(sno);
//            countMajorPoint.setSname(sname);
//            countMajorPoint.setCourseZdcd(countStudentPoint == null ? "0" : countStudentPoint.getZdcd());
//            countMajorPoint.setBfb(i.getBfb());
//            countMajorPoints.add(countMajorPoint);
//        }
//
//        this.saveOrUpdateBatch(countMajorStudentPoint(is, countMajorPoints));
//        return baseMapper.getMajorStudentPoint(sno);
//    }
//
//    public List<CountMajorPoint> getMajorStudentPoint(String sno) {
//        return baseMapper.getMajorStudentPoint(sno);
//    }
//
//    public List<CountMajorPoint> countMajorStudentPoint(String[] is, List<CountMajorPoint> countMajorPoints) {
//        List<CountMajorPoint> c = new ArrayList<>();
//        for (String i : is) {
//            Double zdcd = 0.0;
//            for (CountMajorPoint countMajorPoint : countMajorPoints) {
//                if (i.equals(countMajorPoint.getPoint())) {
//                    zdcd = zdcd + (Double.parseDouble(countMajorPoint.getBfb()) / 100.0) * Double.parseDouble(countMajorPoint.getCourseZdcd());
//                }
//            }
//            for (CountMajorPoint cc : countMajorPoints) {
//                if (i.equals(cc.getPoint())) {
//                    cc.setZdcd(Double.isNaN(zdcd) ? "0" : String.valueOf(zdcd));
//                }
//            }
//        }
//        return countMajorPoints;
//    }
//
//    public List<Map<String, Object>> getStudentPointZdcd(String year, String major, String className, String sno) {
//        List<IndexPointMsg> indexPointMsgs = indexPointMsgService.getAllL1(major, year, "L1");
//        List<Map<String, Object>> maps = new ArrayList<>();
//        for (IndexPointMsg p : indexPointMsgs) {
//            Map<String, Object> map = new HashMap<>();
//            List<CountMajorPoint> countMajorPoints = baseMapper.getStudentPointZdcd(sno, p.getPoint() + ".%");
//            Double min = 100.0;
//            for (CountMajorPoint cc : countMajorPoints) {
//                if (min > Double.parseDouble(cc.getZdcd()) && Double.parseDouble(cc.getZdcd()) != 0) {
//                    min = Double.parseDouble(cc.getZdcd());
//                }
//            }
//            map.put("point", p.getPoint());
//            map.put("m", p.getM());
//            map.put("zdcd", min);
//            maps.add(map);
//        }
//        return maps;
//    }

    public List<CountMajorPoint> getMajorCountClassPoint(String year, String major, String className) {
        List<CountMajorPoint> maps = new ArrayList<>();
        Map<String, String> nub = indexPointService.getMajorPointsCourseNameNub(year, major);
        List<IndexPoint> indexPoints = indexPointService.getAllIndexPoint(year, major);
        List<CountClassPoint> countClassPoints = countClassPointService.getMajorClassPoint(year, major, className);
        Double zdcd = 0.0;
        for (int i = 0; i < indexPoints.size(); i++) {
            Integer ix = Integer.parseInt(nub.get(indexPoints.get(i).getIndexPointDot()).split(",")[1]);
            if (ix == i) {
                zdcd = 0.0;
            }
            CountMajorPoint countMajorPoint = new CountMajorPoint();
            countMajorPoint.setPoint(indexPoints.get(i).getIndexPointDot());
            countMajorPoint.setCourseName(indexPoints.get(i).getCourseName());
            countMajorPoint.setQz(indexPoints.get(i).getQz());
            countMajorPoint.setBfb(indexPoints.get(i).getBfb());
            countMajorPoint.setDcd("0");
            countMajorPoint.setZdcd(0.0);
            for (CountClassPoint c : countClassPoints) {
                if (c.getPoint().equals(indexPoints.get(i).getIndexPointDot()) && c.getCourseName().equals(indexPoints.get(i).getCourseName())) {
                    countMajorPoint.setDcd(c.getZdfd());
                    zdcd = zdcd + Double.parseDouble(c.getZdfd()) * Double.parseDouble(indexPoints.get(i).getBfb()) / 100.0;
                    break;
                }
            }
            for (CountMajorPoint m : maps) {
                if (m.getPoint().equals(indexPoints.get(i).getIndexPointDot())) {
                    m.setZdcd(zdcd);
                }
            }
            maps.add(countMajorPoint);
        }
        return maps;
    }

    public List<CountMajorPoint> getMajorCountStudentPoint(String year, String major, String className, String sno) {
        List<CountMajorPoint> maps = new ArrayList<>();
        Map<String, String> nub = indexPointService.getMajorPointsCourseNameNub(year, major);
        List<IndexPoint> indexPoints = indexPointService.getAllIndexPoint(year, major);
        List<CountStudentPoint> countStudentPoints = countStudentPointService.getCountStudentPointScore(year, major, className, sno);
        Double zdcd = 0.0;
        for (int i = 0; i < indexPoints.size(); i++) {
            Integer ix = Integer.parseInt(nub.get(indexPoints.get(i).getIndexPointDot()).split(",")[1]);
            if (ix == i) {
                zdcd = 0.0;
            }
            CountMajorPoint countMajorPoint = new CountMajorPoint();
            countMajorPoint.setPoint(indexPoints.get(i).getIndexPointDot());
            countMajorPoint.setCourseName(indexPoints.get(i).getCourseName());
            countMajorPoint.setQz(indexPoints.get(i).getQz());
            countMajorPoint.setBfb(indexPoints.get(i).getBfb());
            countMajorPoint.setDcd("0");
            countMajorPoint.setZdcd(0.0);
            for (CountStudentPoint c : countStudentPoints) {
                if (c.getPoint().equals(indexPoints.get(i).getIndexPointDot()) && c.getCourseName().equals(indexPoints.get(i).getCourseName())) {
                    countMajorPoint.setDcd(c.getZdcd());
                    zdcd = zdcd + Double.parseDouble(c.getZdcd()) * Double.parseDouble(indexPoints.get(i).getBfb()) / 100.0;
                    break;
                }
            }
            for (CountMajorPoint m : maps) {
                if (m.getPoint().equals(indexPoints.get(i).getIndexPointDot())) {
                    m.setZdcd(zdcd);
                }
            }
            maps.add(countMajorPoint);
        }
        return maps;
    }
}
