package cn.zykj.cloud.mapper;

import cn.zykj.cloud.entity.CountMajorPoint;
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
 * @since 2019-01-26
 */
public interface CountMajorPointMapper extends BaseMapper<CountMajorPoint> {

    @Select("SELECT * FROM count_major_point WHERE sno=#{sno} ORDER BY (point * 1)")
    List<CountMajorPoint> getMajorStudentPoint(@Param(value = "sno") String sno);

    @Select("SELECT * FROM count_major_point WHERE sno=#{sno} AND point LIKE #{point} AND courseZdcd!= '0'")
    List<CountMajorPoint> getStudentPointZdcd(@Param(value = "sno") String sno, @Param(value = "point") String point);
}
