package cn.zykj.cloud.mapper;

import cn.zykj.cloud.entity.TeachingProgram;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Olaf
 * @since 2018-12-19
 */
public interface TeachingProgramMapper extends BaseMapper<TeachingProgram> {

    @Select("SELECT DISTINCT className FROM teaching_program WHERE major=#{major} AND year=#{year}")
    String[] getMajorClassName(@Param("major") String major, @Param("year") String year);

    @Select("SELECT DISTINCT courseName, courseType FROM teaching_program WHERE major=#{major} AND year=#{year}")
    List<TeachingProgram> getTeachingProgramCourseName(@Param("major") String major, @Param("year") String year);

    @Select("SELECT DISTINCT courseType FROM teaching_program WHERE major=#{major} AND year=#{year}")
    String[] getTeachingProgramCourseType(@Param("major") String major, @Param("year") String year);

    @Select("SELECT DISTINCT courseName, courseType FROM teaching_program WHERE account=#{account}")
    List<TeachingProgram> getTeacherCourse(@Param("account") String account);

    @Select("SELECT DISTINCT courseType FROM teaching_program WHERE account=#{account}")
    String[] getTeacherCourseType(@Param("account") String account);

    @Select("SELECT DISTINCT `year` FROM teaching_program WHERE account=#{account} AND courseName=#{courseName}")
    String[] getTeacherClassYear(@Param("account") String account, @Param("courseName") String courseName);

    @Update("UPDATE teaching_program SET courseName=#{value} WHERE courseName=#{courseName} AND major=#{major} AND year=#{year}")
    void setCourseName(@Param("value") String value, @Param("courseName") String courseName, @Param("major") String major, @Param("year") String year);
}
