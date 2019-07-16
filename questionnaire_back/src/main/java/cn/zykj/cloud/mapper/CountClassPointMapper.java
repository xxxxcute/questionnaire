package cn.zykj.cloud.mapper;

import cn.zykj.cloud.entity.CountClassPoint;
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
public interface CountClassPointMapper extends BaseMapper<CountClassPoint> {

    @Select("SELECT DISTINCT point, zdfd, bfb FROM count_class_point WHERE year=#{year} AND major=#{major} AND courseName=#{courseName} AND className=#{className} AND zdfd!='0.0' AND bfb!='0' GROUP BY (point * 1)")
    List<CountClassPoint> getPointDcdZdcd(@Param(value = "year") String year, @Param(value = "major") String major, @Param(value = "courseName") String courseName, @Param(value = "className") String className);

    @Select("SELECT * FROM count_class_point WHERE year=#{year} AND major=#{major} AND courseName=#{courseName} AND className=#{className} ORDER BY (point * 1)")
    List<CountClassPoint> getPointDcd(@Param(value = "year") String year, @Param(value = "major") String major, @Param(value = "courseName") String courseName, @Param(value = "className") String className);

    @Select("SELECT * FROM count_class_point WHERE year=#{year} AND major=#{major} AND courseName=#{courseName} AND className=#{className} AND method=#{method} ORDER BY (point * 1)")
    List<CountClassPoint> getPointDcds(@Param(value = "year") String year, @Param(value = "major") String major, @Param(value = "courseName") String courseName, @Param(value = "className") String className, @Param(value = "method") String method);

    @Select("SELECT DISTINCT point, courseName, zdfd FROM count_class_point WHERE year=#{year} AND major=#{major} AND className=#{className} GROUP BY point, courseName, zdfd")
    List<CountClassPoint> getMajorClassPoint(@Param(value = "year") String year, @Param(value = "major") String major, @Param(value = "className") String className);
}
