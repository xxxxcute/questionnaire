package cn.zykj.cloud.mapper;

import cn.zykj.cloud.entity.Score;
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
public interface ScoreMapper extends BaseMapper<Score> {

    @Select("SELECT DISTINCT sno, sname FROM score WHERE year=#{year} AND major=#{major} AND courseName=#{courseName} AND className=#{className} ORDER BY sno")
    List<Score> getClassStudent(@Param(value = "year") String year, @Param(value = "major") String major, @Param(value = "courseName") String courseName, @Param(value = "className") String className);

    @Select("SELECT DISTINCT sno, sname FROM score WHERE className=#{className} AND courseName=#{courseName} ORDER BY sno")
    List<Score> getMajorClassStudent(@Param(value = "className") String className, @Param(value = "courseName") String courseName);

    @Select("SELECT DISTINCT sno, sname FROM score WHERE className=#{className} ORDER BY sno")
    List<Score> getAllMajorClassStudent(@Param(value = "className") String className);
}
