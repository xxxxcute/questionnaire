package cn.zykj.cloud.service;

import cn.zykj.cloud.entity.*;
import cn.zykj.cloud.mapper.CountStudentPointMapper;
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
 *  服务类
 * </p>
 *
 * @author Olaf
 * @since 2019-01-18
 */
@Service
public class CountStudentPointService extends ServiceImpl<CountStudentPointMapper, CountStudentPoint> {

    private IndexPointService indexPointService;
    private ScoreService scoreService;
    private IndexPointThService indexPointThService;
    private CountClassPointService countClassPointService;

    @Autowired
    public CountStudentPointService(CountClassPointService countClassPointService, IndexPointThService indexPointThService, ScoreService scoreService, IndexPointService indexPointService) {
        this.indexPointService = indexPointService;
        this.scoreService = scoreService;
        this.indexPointThService = indexPointThService;
        this.countClassPointService = countClassPointService;
    }

    /**
     * 计算每个学生的指标点总达成度
     * @param classID
     * @return
     */
    public boolean uploadStudentPoint(String year, String major, String courseName, String className) {
        baseMapper.delete(new QueryWrapper<CountStudentPoint>().lambda()
                .eq(CountStudentPoint::getYear, year)
                .eq(CountStudentPoint::getMajor, major)
                .eq(CountStudentPoint::getCourseName, courseName)
                .eq(CountStudentPoint::getClassName, className));
        List<IndexPoint> indexPoints = indexPointService.getCourseNamePoint(year, major, courseName);
        List<Score> students = scoreService.getClassStudent(year, major, courseName, className);
        List<Score> scores = scoreService.getAllStudentScore(year, major, courseName, className);
        List<CountStudentPoint> countStudentPoints = new ArrayList<>();
        for (Score s : students) {
            for (IndexPoint i : indexPoints) {
                CountStudentPoint countStudentPoint = new CountStudentPoint();
                List<IndexPointTh> indexPointThs = indexPointThService.getClassStudentTh(year, major, courseName, className, i.getIndexPointDot());
                Double zdf = 0.0, zpf = 0.0, zdcd = 0.0;
                for (IndexPointTh th : indexPointThs) {
//                    List<Score> stuScores = scoreService.getClassThScore(year, major, courseName, className, s.getSno(), th.getTh(), th.getMethod());
                    for (Score stu : scores) {
                        if (s.getSno().equals(stu.getSno()) && th.getTh().equals(stu.getTh()) && th.getMethod().equals(stu.getMethod())) {
                            zdf = zdf + Double.parseDouble(stu.getScore());
                            zpf = zpf + Double.parseDouble(stu.getPf());
                        }
                    }
                }
                zdcd = zdf / zpf;
                countStudentPoint.setYear(year);
                countStudentPoint.setMajor(major);
                countStudentPoint.setCourseName(courseName);
                countStudentPoint.setClassName(className);
                countStudentPoint.setSno(s.getSno());
                countStudentPoint.setSname(s.getSname());
                countStudentPoint.setPoint(i.getIndexPointDot());
                countStudentPoint.setZdf(String.valueOf(zdf));
                countStudentPoint.setZpf(String.valueOf(zpf));
                countStudentPoint.setZdcd(Double.isNaN(zdcd) ? "0.0" : String.valueOf(zdcd));
                countStudentPoints.add(countStudentPoint);
            }
        }
        return this.saveOrUpdateBatch(countStudentPoints);
    }

    public List<Map<String, Object>> getCountStudentPoint(String year, String major, String courseName, String className) {
        List<CountClassPoint> countClassPoints = countClassPointService.getCountPointZdcd(year, major, courseName, className);
        List<Map<String, Object>> maps = new ArrayList<>();
        for (CountClassPoint c : countClassPoints) {
            Map<String, Object> map = new HashMap<>();
            map.put("point", c);
            map.put("student", baseMapper.selectList(new QueryWrapper<CountStudentPoint>().lambda()
                    .eq(CountStudentPoint::getYear, year)
                    .eq(CountStudentPoint::getMajor, major)
                    .eq(CountStudentPoint::getCourseName, courseName)
                    .eq(CountStudentPoint::getClassName, className)
                    .eq(CountStudentPoint::getPoint, c.getPoint())));
            maps.add(map);
        }
        return maps;
    }

    public int deleteCountStudentPoint(String year, String major, String courseName, String className) {
        return baseMapper.delete(new QueryWrapper<CountStudentPoint>().lambda()
                .eq(CountStudentPoint::getYear, year)
                .eq(CountStudentPoint::getMajor, major)
                .eq(CountStudentPoint::getCourseName, courseName)
                .eq(CountStudentPoint::getClassName, className));
    }

    public List<CountStudentPoint> getCountStudentPointSize(String year, String major, String courseName, String className) {
        return baseMapper.selectList(new QueryWrapper<CountStudentPoint>().lambda()
                .eq(CountStudentPoint::getYear, year)
                .eq(CountStudentPoint::getMajor, major)
                .eq(CountStudentPoint::getCourseName, courseName)
                .eq(CountStudentPoint::getClassName, className));
    }

    public List<CountStudentPoint> getCountStudentPointScore(String year, String major, String className, String sno) {
        return baseMapper.selectList(new QueryWrapper<CountStudentPoint>().lambda()
                .eq(CountStudentPoint::getYear, year)
                .eq(CountStudentPoint::getMajor, major)
                .eq(CountStudentPoint::getClassName, className)
                .eq(CountStudentPoint::getSno, sno));
    }

    public CountStudentPoint getCountStudentPoint(String year, String major, String courseName, String sno, String point) {
        return baseMapper.selectOne(new QueryWrapper<CountStudentPoint>().lambda()
                .eq(CountStudentPoint::getYear, year)
                .eq(CountStudentPoint::getMajor, major)
                .eq(CountStudentPoint::getCourseName, courseName)
                .eq(CountStudentPoint::getSno, sno)
                .eq(CountStudentPoint::getPoint, point));
    }
}
