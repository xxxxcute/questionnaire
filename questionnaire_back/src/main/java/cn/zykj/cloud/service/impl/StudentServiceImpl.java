package cn.zykj.cloud.service.impl;

import cn.zykj.cloud.entity.Student;
import cn.zykj.cloud.entity.Users;
import cn.zykj.cloud.mapper.StudentMapper;
import cn.zykj.cloud.service.StudentService;
import cn.zykj.cloud.utils.Constants;
import cn.zykj.cloud.utils.JWT;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Zxy
 * @since 2019-02-14
 */
@Service
public class StudentServiceImpl extends ServiceImpl<StudentMapper, Student> implements StudentService {

    private RedisTemplate redisTemplate;

    @Autowired
    public StudentServiceImpl(RedisTemplate redisTemplate){
        this.redisTemplate = redisTemplate;
    }


    public Student studentLogin(String sno,String sname){
        Student student = baseMapper.selectOne(new QueryWrapper<Student>().lambda()
                .eq(Student::getSno,sno)
                .eq(Student::getSname,sname));
        if (student == null) {
            return null;
        } else {
            String token = JWT.createJWT(student.getSno(), student.getRole());
            student.setToken(token);
            this.updateById(student);
            return student;
        }
    }

    public Student studentInfo(String sno) {
        return baseMapper.selectOne(new QueryWrapper<Student>().lambda().eq(Student::getSno, sno));
    }
}
