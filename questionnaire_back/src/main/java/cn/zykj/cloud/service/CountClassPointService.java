package cn.zykj.cloud.service;

import cn.zykj.cloud.entity.IndexPoint;
import cn.zykj.cloud.entity.IndexPointTh;
import cn.zykj.cloud.entity.CountClassPoint;
import cn.zykj.cloud.mapper.CountClassPointMapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import org.apache.commons.lang3.ArrayUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author Olaf
 * @since 2018-11-17
 */
@Service
public class CountClassPointService extends ServiceImpl<CountClassPointMapper, CountClassPoint> {

    @Autowired
    private IndexPointThService indexPointThService;
    @Autowired
    private IndexPointService indexPointService;

    /**
     * 初始化设置指标点达成度
     *
     * @param classID
     * @param method
     * @param indexPoints
     * @param stu
     * @return
     */
    public boolean uploadPointDcd(String year, String major, String courseName, String className, String method, List<IndexPoint> indexPoints, String stu) {
        List<CountClassPoint> countClassPoints = new ArrayList<>();
        for (int i = 0; i < indexPoints.size(); i++) {
            CountClassPoint countClassPoint = new CountClassPoint();
            countClassPoint.setYear(year);
            countClassPoint.setMajor(major);
            countClassPoint.setCourseName(courseName);
            countClassPoint.setClassName(className);
            countClassPoint.setMethod(method);
            countClassPoint.setBfb("0");
            countClassPoint.setZdfd("0");
            countClassPoint.setZdf("0");
            countClassPoint.setZpf("0");
            countClassPoint.setDcd("0");
            countClassPoint.setStu(stu);
            countClassPoint.setPoint(indexPoints.get(i).getIndexPointDot());
            countClassPoints.add(countClassPoint);
        }
        baseMapper.delete(new QueryWrapper<CountClassPoint>().lambda()
                .eq(CountClassPoint::getYear, year)
                .eq(CountClassPoint::getMajor, major)
                .eq(CountClassPoint::getCourseName, courseName)
                .eq(CountClassPoint::getClassName, className)
                .eq(CountClassPoint::getMethod, method));
        return this.saveOrUpdateBatch(countClassPoints);
    }

    /**
     * 计算指标点达成度
     *
     * @param classID
     * @param method
     * @return
     */
    public boolean uploadPoint(String year, String major, String courseName, String className, String method) {
        List<IndexPointTh> indexPointThs = indexPointThService.getScoreTh(year, major, courseName, className, method);
        List<CountClassPoint> countClassPoints = baseMapper.selectList(new QueryWrapper<CountClassPoint>().lambda()
                .eq(CountClassPoint::getYear, year)
                .eq(CountClassPoint::getMajor, major)
                .eq(CountClassPoint::getCourseName, courseName)
                .eq(CountClassPoint::getClassName, className)
                .eq(CountClassPoint::getMethod, method));
        for (CountClassPoint p : countClassPoints) {
            Double zpf = 0.0;
            Double zdf = 0.0;
            for (IndexPointTh d : indexPointThs) {
                if (d.getPoint() != null && !d.getPoint().equals("") && ArrayUtils.contains(d.getPoint().split(","), p.getPoint())) {
                    zpf = zpf + Double.parseDouble(d.getPf());
                    zdf = zdf + Double.parseDouble(d.getScore());
                }
            }
            p.setZpf(String.valueOf(zpf));
            p.setZdf(String.valueOf(zdf));
            double res = (zdf / Double.parseDouble(p.getStu())) / zpf;
            p.setDcd(Double.isNaN(res) ? "0" : String.valueOf(res));
            baseMapper.updateById(p);
        }
        return true;
    }

    /**
     * 设置指标点总达成度
     *
     * @param classID
     * @return
     */
    public List<CountClassPoint> getPointDcdZdcd(String year, String major, String courseName, String className) {
        uploadPointZdcd(year, major, courseName, className);
        return baseMapper.getPointDcdZdcd(year, major, courseName, className);
    }

    public List<CountClassPoint> getCountPointZdcd(String year, String major, String courseName, String className) {
//        uploadPointZdcd(year, major, courseName, className);
        return baseMapper.getPointDcdZdcd(year, major, courseName, className);
    }
    /**
     * 获取所有考核类型的指标点达成度
     *
     * @param classID
     * @param methods
     * @return
     */
    public Map<String, Object> getPointDcds(String year, String major, String courseName, String className, String methods) {
        Map<String, Object> map = new HashMap<>();
        String[] method = methods.split(",");
        for (String m : method) {
            map.put(m, baseMapper.getPointDcds(year, major, courseName, className, m));
        }
        return map;
    }

    /**
     * 总达成度
     *
     * @param classID
     * @param methods
     * @return
     */
    public List<CountClassPoint> getPointDcd(String year, String major, String courseName, String className) {
        return baseMapper.getPointDcd(year, major, courseName, className);
    }

    /**
     * 配置指标点的百分比
     *
     * @param classID
     * @param method
     * @param bfb
     * @param point
     * @return
     */
    public boolean uploadPointBfb(String Json) {
        JSONArray jsonArray = JSONArray.fromObject(Json);
        List<CountClassPoint> countClassPoints = JSONArray.toList(jsonArray, new CountClassPoint(), new JsonConfig());
        return this.saveOrUpdateBatch(countClassPoints);
    }

    /**
     * 计算指标点总达成度
     *
     * @param classID
     * @return
     */
    public int uploadPointZdcd(String year, String major, String courseName, String className) {
        List<CountClassPoint> countClassPoints = baseMapper.selectList(new QueryWrapper<CountClassPoint>().lambda()
                .eq(CountClassPoint::getYear, year)
                .eq(CountClassPoint::getMajor, major)
                .eq(CountClassPoint::getCourseName, courseName)
                .eq(CountClassPoint::getClassName, className));
        for (CountClassPoint p : countClassPoints) {
            double sum = Double.parseDouble(p.getDcd()) * Double.parseDouble(p.getBfb()) / 100.0;
            for (CountClassPoint d : countClassPoints) {
                if (d.getPoint().equals(p.getPoint()) && !p.getId().equals(d.getId())) {
                    sum = sum + Double.parseDouble(d.getDcd()) * Double.parseDouble(d.getBfb()) / 100.0;
                }
            }
            p.setZdfd(Double.isNaN(sum) ? "0" : String.valueOf(sum));
            baseMapper.updateById(p);
        }
        return 1;
    }

    public int deleteCountClassPoint(String year, String major, String courseName, String className, String method) {
        return baseMapper.delete(new QueryWrapper<CountClassPoint>().lambda()
                .eq(CountClassPoint::getYear, year)
                .eq(CountClassPoint::getMajor, major)
                .eq(CountClassPoint::getCourseName, courseName)
                .eq(CountClassPoint::getClassName, className)
                .eq(CountClassPoint::getMethod, method));
    }

    public List<CountClassPoint> getMajorClassPoint(String year, String major, String className) {
        return baseMapper.getMajorClassPoint(year, major, className);
    }
}
