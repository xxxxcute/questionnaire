package cn.zykj.cloud.service;

import cn.zykj.cloud.entity.CountClassPoint;
import cn.zykj.cloud.entity.IndexPointTh;
import cn.zykj.cloud.mapper.IndexPointThMapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.commons.lang3.StringUtils;
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
 * @since 2019-01-15
 */
@Service
public class IndexPointThService extends ServiceImpl<IndexPointThMapper, IndexPointTh> {

    @Autowired
    private CountClassPointService countClassPointService;

    /**
     * 配置题号
     *
     * @param classID
     * @param method
     * @param thList
     * @param pfList
     * @param zfList
     * @return
     */
    public boolean uploadPointTh(String year, String major, String courseName, String className, String method, List<String> thList, List<String> pfList, List<String> zfList) {
        List<IndexPointTh> indexPointThs = new ArrayList<>();
        for (int i = 0; i < thList.size(); i++) {
            IndexPointTh indexPointTh = new IndexPointTh();
            indexPointTh.setYear(year);
            indexPointTh.setMajor(major);
            indexPointTh.setCourseName(courseName);
            indexPointTh.setClassName(className);
            indexPointTh.setMethod(method);
            indexPointTh.setTh(thList.get(i));
            indexPointTh.setPf(pfList.get(i));
            indexPointTh.setScore(zfList.get(i));
            indexPointThs.add(indexPointTh);
        }
        baseMapper.delete(new QueryWrapper<IndexPointTh>().lambda()
                .eq(IndexPointTh::getYear, year)
                .eq(IndexPointTh::getMajor, major)
                .eq(IndexPointTh::getCourseName, courseName)
                .eq(IndexPointTh::getClassName, className)
                .eq(IndexPointTh::getMethod, method));
        return this.saveOrUpdateBatch(indexPointThs);
    }

    /**
     * 获取对应考核类型的成绩中的题号
     *
     * @param classID
     * @param method
     * @return
     */
    public List<IndexPointTh> getScoreTh(String year, String major, String courseName, String className, String method) {
        return baseMapper.getScoreTh(year, major, courseName, className, method);
    }

    /**
     * 配置题目对应的指标点数组
     *
     * @param str
     * @param newStr
     * @return
     */
    private String pointString(String[] str, String newStr) {
        List<String> list = new ArrayList<>();
        boolean option = true;
        for (String o : str) {
            if (o.equals(newStr)) {
                option = false;
            } else {
                list.add(o);
            }
        }
        if (option) {
            list.add(newStr);
        }
        return StringUtils.join(list.toArray(new String[1]), ",");
    }

    /**
     * 配置题号对应的指标点
     *
     * @param classID
     * @param method
     * @param th
     * @param indexPointDot
     * @return
     */
    public int uploadPoint(String year, String major, String courseName, String className, String method, String th, String indexPointDot) {
        IndexPointTh indexPointTh = baseMapper.selectOne(new QueryWrapper<IndexPointTh>().lambda()
                .eq(IndexPointTh::getYear, year)
                .eq(IndexPointTh::getMajor, major)
                .eq(IndexPointTh::getCourseName, courseName)
                .eq(IndexPointTh::getClassName, className)
                .eq(IndexPointTh::getMethod, method)
                .eq(IndexPointTh::getTh, th));
        if (indexPointTh.getPoint() == null || indexPointTh.getPoint().equals("")) {
            indexPointTh.setPoint(indexPointDot);
        } else {
            indexPointTh.setPoint(pointString(indexPointTh.getPoint().split(","), indexPointDot));
        }
        return baseMapper.updateById(indexPointTh);
    }

    public List<IndexPointTh> getClassStudentTh(String year, String major, String courseName, String className, String point) {
        return baseMapper.getPointMethod(year, major, courseName, className, point);
    }

    public int deleteIndexPointTh(String year, String major, String courseName, String className, String method) {
        return baseMapper.delete(new QueryWrapper<IndexPointTh>().lambda()
                .eq(IndexPointTh::getYear, year)
                .eq(IndexPointTh::getMajor, major)
                .eq(IndexPointTh::getCourseName, courseName)
                .eq(IndexPointTh::getClassName, className)
                .eq(IndexPointTh::getMethod, method));
    }

    public List<IndexPointTh> getThPointSize(String year, String major, String courseName, String className) {
        return baseMapper.selectList(new QueryWrapper<IndexPointTh>().lambda()
                .eq(IndexPointTh::getYear, year)
                .eq(IndexPointTh::getMajor, major)
                .eq(IndexPointTh::getCourseName, courseName)
                .eq(IndexPointTh::getClassName, className));
    }

    public List<IndexPointTh> getPointMethod(String year, String major, String courseName, String className, String point) {
        return baseMapper.getPointMethod(year, major, courseName, className, point);
    }

    public List<IndexPointTh> getPointMethodSize(String year, String major, String courseName, String className, String method, String point) {
        return baseMapper.getPointMethodSize(year, major, courseName, className, method, point);
    }
}
