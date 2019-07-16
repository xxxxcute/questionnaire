package cn.zykj.cloud.service;

import cn.zykj.cloud.entity.IndexPoint;
import cn.zykj.cloud.entity.IndexPointMsg;
import cn.zykj.cloud.mapper.IndexPointMsgMapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;
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
 * @since 2018-12-29
 */
@Service
public class IndexPointMsgService extends ServiceImpl<IndexPointMsgMapper, IndexPointMsg> {

    public void setPoint(List<IndexPointMsg> indexPointMsgs) {
        baseMapper.delete(new QueryWrapper<IndexPointMsg>().lambda().eq(IndexPointMsg::getMajor, indexPointMsgs.get(0).getMajor()).eq(IndexPointMsg::getYear, indexPointMsgs.get(0).getYear()).eq(IndexPointMsg::getType, indexPointMsgs.get(0).getType()));
        this.saveOrUpdateBatch(indexPointMsgs);
    }

    /**
     * 分页获取指标点
     * @param page
     * @param major
     * @param year
     * @param option
     * @return
     */
    public IndexPointMsg getPointL2Msg(String major, String year, String point) {
        return baseMapper.selectOne(new QueryWrapper<IndexPointMsg>().lambda().eq(IndexPointMsg::getMajor, major).eq(IndexPointMsg::getYear, year).eq(IndexPointMsg::getPoint, point));
    }

    public String[] getPointMsgYears(String major) {
        return baseMapper.getPointMsgYears(major);
    }

    public boolean uploadPointMsgPT(String Pyear, String Tyear, String major) {
        List<IndexPointMsg> PindexPointMsgsL1 = getAllL1(major, Pyear, "L1");
        List<IndexPointMsg> TindexPointMsgsL1 = getAllL1(major, Tyear, "L1");
        List<IndexPointMsg> PindexPointMsgsL2 = getAllL1(major, Pyear, "L2");
        List<IndexPointMsg> TindexPointMsgsL2 = getAllL1(major, Tyear, "L2");
        for (IndexPointMsg p1 : PindexPointMsgsL1) {
            for (IndexPointMsg t1 : TindexPointMsgsL1) {
                if (p1.getPoint().equals(t1.getPoint())) {
                    t1.setMsg(p1.getMsg());
                    t1.setM(p1.getM());
                    break;
                }
            }
        }
        for (IndexPointMsg p2 : PindexPointMsgsL2) {
            for (IndexPointMsg t2 : TindexPointMsgsL2) {
                if (p2.getPoint().equals(t2.getPoint())) {
                    t2.setMsg(p2.getMsg());
                    t2.setM(p2.getM());
                    break;
                }
            }
        }
        return this.saveOrUpdateBatch(TindexPointMsgsL1) && this.saveOrUpdateBatch(TindexPointMsgsL2);
    }

    /**
     * 获取1级指标点
     * @param major
     * @param year
     * @param option
     * @return
     */
    public List<IndexPointMsg> getAllL1(String major, String year, String option) {
        return baseMapper.getAllL1(major, year, option);
    }

    /**
     * 根据1级指标点获取对应的2级指标点
     * @param major
     * @param year
     * @param L1
     * @return
     */
    public List<IndexPointMsg> getL1putL2(String major, String year, String L1) {
        List<IndexPointMsg> L2s = baseMapper.selectList(new QueryWrapper<IndexPointMsg>().lambda().eq(IndexPointMsg::getMajor, major).eq(IndexPointMsg::getYear, year).eq(IndexPointMsg::getType, "L2").orderByAsc(IndexPointMsg::getPoint));
        List<IndexPointMsg> res = new ArrayList<>();
        for (IndexPointMsg L2 : L2s) {
            if (L2.getPoint().split("\\.")[0].equals(L1)) {
                res.add(L2);
            }
        }
        return res;
    }

    /**
     * 更新指标点（更改描述信息）
     * @param points
     * @return
     */
    public boolean putPointTo(String points) {
        JSONArray jsonArray = JSONArray.fromObject(points);
        List<IndexPointMsg> list = JSONArray.toList(jsonArray, new IndexPointMsg(), new JsonConfig());
        return this.saveOrUpdateBatch(list);
    }

    /**
     * 获取所有1 2级指标点
     * @param major
     * @param year
     * @return
     */
    public List<Map<String, Object>> getAllPointIndex(String major, String year) {
        List<IndexPointMsg> L1s = getAllL1(major, year, "L1");
        List<Map<String, Object>> maps = new ArrayList<>();
        for (IndexPointMsg L1 : L1s) {
            List<IndexPointMsg> L2 = getL1putL2(major, year, L1.getPoint());
            Map<String, Object> map = new HashMap<>();
            map.put("L1", L1);
            map.put("L2", L2);
            maps.add(map);
        }
        return maps;
    }

    public List<IndexPointMsg> getL2Msg(String year, String major, String points) {
        String[] point = points.split(",");
        List<IndexPointMsg> indexPointMsgs = new ArrayList<>();
        for (String p : point) {
            indexPointMsgs.add(baseMapper.selectOne(new QueryWrapper<IndexPointMsg>()
            .lambda().eq(IndexPointMsg::getMajor, major)
            .eq(IndexPointMsg::getPoint, p)
            .eq(IndexPointMsg::getYear, year)));
        }
        return indexPointMsgs;
    }
}
