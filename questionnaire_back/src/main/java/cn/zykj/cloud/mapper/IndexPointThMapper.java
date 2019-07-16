package cn.zykj.cloud.mapper;

import cn.zykj.cloud.entity.IndexPointTh;
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
 * @since 2019-01-15
 */
public interface IndexPointThMapper extends BaseMapper<IndexPointTh> {

    @Select("SELECT * FROM index_point_th WHERE year=#{year} AND major=#{major} AND courseName=#{courseName} AND className=#{className} AND method=#{method} ORDER BY (th * 1) ASC")
    List<IndexPointTh> getScoreTh(@Param(value = "year") String year, @Param(value = "major") String major, @Param(value = "courseName") String courseName, @Param(value = "className") String className, @Param(value = "method") String method);

    @Select("SELECT * FROM index_point_th WHERE year=#{year} AND major=#{major} AND courseName=#{courseName} AND className=#{className} AND FIND_IN_SET(#{point}, point) ORDER BY (th * 1) ASC")
    List<IndexPointTh> getPointMethod(@Param(value = "year") String year, @Param(value = "major") String major, @Param(value = "courseName") String courseName, @Param(value = "className") String className, @Param(value = "point") String point);

    @Select("SELECT * FROM index_point_th WHERE year=#{year} AND major=#{major} AND courseName=#{courseName} AND className=#{className} AND method=#{method} AND FIND_IN_SET(#{point}, point) ORDER BY (th * 1) ASC")
    List<IndexPointTh> getPointMethodSize(@Param(value = "year") String year, @Param(value = "major") String major, @Param(value = "courseName") String courseName, @Param(value = "className") String className, @Param(value = "method") String method, @Param(value = "point") String point);
}
