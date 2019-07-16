package cn.zykj.cloud.mapper;

import cn.zykj.cloud.entity.IndexPoint;
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
 * @since 2018-12-19
 */
public interface IndexPointMapper extends BaseMapper<IndexPoint> {

    @Select("SELECT * FROM index_point WHERE year=#{year} AND major=#{major} AND courseName=#{courseName} ORDER BY (indexPointDot * 1) ASC")
    List<IndexPoint> getCourseNamePoint(@Param("year") String year, @Param("major") String major, @Param("courseName") String courseName);

    @Select("SELECT DISTINCT courseName FROM index_point WHERE major=#{major} AND year=#{year}")
    String[] getIndexPointCourseName(@Param("major") String major, @Param("year") String year);

    @Select("SELECT DISTINCT indexPointDot FROM index_point WHERE major=#{major} AND year=#{year} ORDER BY (indexPointDot * 1) ASC")
    String[] getIndexPoint(@Param("major") String major, @Param("year") String year);

    @Select("SELECT DISTINCT qz, bfb FROM index_point WHERE major=#{major} AND year=#{year}")
    List<IndexPoint> getIndexPointQz(@Param("major") String major, @Param("year") String year);

    @Select("SELECT * FROM index_point WHERE year=#{year} AND major=#{major} ORDER BY (indexPointDot * 1) ASC")
    List<IndexPoint> getAllIndexPoint(@Param("year") String year, @Param("major") String major);
}
