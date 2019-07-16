package cn.zykj.cloud.mapper;

import cn.zykj.cloud.entity.IndexPoint;
import cn.zykj.cloud.entity.IndexPointMsg;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Olaf
 * @since 2018-12-29
 */
public interface IndexPointMsgMapper extends BaseMapper<IndexPointMsg> {

    @Select("SELECT * FROM index_point_msg WHERE major=#{major} AND year=#{year} AND type=#{type} ORDER BY (point * 1) ASC")
    List<IndexPointMsg> getAllL1(@Param("major") String major, @Param("year") String year, @Param("type") String type);

    @Select("SELECT DISTINCT year FROM index_point_msg WHERE major=#{major}")
    String[] getPointMsgYears(@Param("major") String major);

}
