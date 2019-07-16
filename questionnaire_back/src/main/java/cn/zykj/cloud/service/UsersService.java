package cn.zykj.cloud.service;


import cn.zykj.cloud.entity.Users;
import cn.zykj.cloud.mapper.UsersMapper;
import cn.zykj.cloud.utils.Constants;
import cn.zykj.cloud.utils.JWT;
import cn.zykj.cloud.utils.PassUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Olaf
 * @since 2018-10-24
 */
@Service
public class UsersService extends ServiceImpl<UsersMapper, Users> {

    private RedisTemplate redisTemplate;

    @Autowired
    public UsersService(RedisTemplate redisTemplate) {
        this.redisTemplate = redisTemplate;
    }

    public Users getUser(String account) {
        return baseMapper.selectOne(new QueryWrapper<Users>().lambda().eq(Users::getAccount, account));
    }

    /**
     * 用户登陆 获取用户信息，并将用户信息存入Redis
     * @param account 账号
     * @param password 密码
     * @return 用户信息
     */
    public Users UserLogin(String account, String password) {
        Users users = baseMapper.selectOne(new QueryWrapper<Users>().lambda().eq(Users::getAccount, account).eq(Users::getPassword, PassUtil.getMD5(password)));
        if (users == null) {
            return null;
        } else {
            String token = JWT.createJWT(users.getAccount(), users.getRole() == null ? Constants.TEACHER_ROLE : users.getRole());
            users.setToken(token);
            this.updateById(users);
//            setUserInfo(account, users);
            return users;
        }
    }

    /**
     * 接受上传的教师信息列表
     * @param file 文件
     * @return
     */
    public boolean insertTeacherAccount(MultipartFile file, Users u) {
        try {
            baseMapper.delete(new QueryWrapper<Users>().lambda().ne(Users::getRole, Constants.ADMIN_ROLE));
            DataInputStream in = new DataInputStream(file.getInputStream());
            BufferedReader br = new BufferedReader(new InputStreamReader(in,"GBK"));
            String nextline = br.readLine();
            List<Users> users = new ArrayList<>();
            while((nextline = br.readLine()) != null) {
                Users user = new Users();
                String[] strings = nextline.split(",");
                user.setAccount(strings[0]);
                user.setSchool(u.getSchool());
                user.setTeacherName(strings[1]);
                user.setPhone("未填写");
                user.setPassword(PassUtil.getMD5(strings[0]));
                user.setRole(Constants.TEACHER_ROLE);
                users.add(user);
            }
            return this.saveOrUpdateBatch(users);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /**
     * 分页获取所有教职工信息
     * @param page
     * @return
     */
    public IPage<Users> getPageUserInfo(Page<Users> page) {
        return baseMapper.selectPage(page, new QueryWrapper<Users>().lambda().ne(Users::getRole, Constants.ADMIN_ROLE));
    }

    /**
     * 修改教职工信息
     * @param users
     * @return
     */
    public boolean editTeacherInfo(Users users) {
        Users users1 = baseMapper.selectOne(new QueryWrapper<Users>().lambda().eq(Users::getId, users.getId()));
        if (!users.getPassword().equals(users1.getPassword())) {
            users.setPassword(PassUtil.getMD5(users.getPassword()));
        }
        return this.updateById(users);
    }

//    public boolean UserLogout() {
//        return this.up
//    }

    /**
     * 存入用户信息
     * @param key 关键字（用户名）
     * @param userInfo 用户信息
     */
    public void setUserInfo(String key, Users userInfo) {
        redisTemplate.opsForValue().set(key, userInfo, 2, TimeUnit.HOURS);
    }

    /**
     * 获取用户信息
     * @param key 关键字（用户名）
     * @return
     */
    public Users getUserInfo(String key) {
        return key == null ? null : (Users) redisTemplate.opsForValue().get(key);
    }

    /**
     * 删除用户信息
     * @param key 关键字（用户名）
     */
    @SuppressWarnings("unchecked")
    public void deleteUserInfo(String... key) {
        if (key != null && key.length > 0) {
            if (key.length == 1) {
                redisTemplate.delete(key[0]);
            } else {
                redisTemplate.delete(CollectionUtils.arrayToList(key));
            }
        }
    }

    public Users UserInfo(String account) {
        return baseMapper.selectOne(new QueryWrapper<Users>().lambda().eq(Users::getAccount, account));
    }

    //！！！！新增--查询专业列表
    public List<String> getMajor(){
        List<Users> userList = baseMapper.selectList(new QueryWrapper<Users>().lambda()
                .ne(Users::getRole,"普通教师")
                .ne(Users::getRole,"问卷管理员")
                .ne(Users::getRole,"系统管理员"));
        List<String> major = new ArrayList<String>();
        for(int i = 0;i < userList.size();i++){
            major.add(userList.get(i).getRole());
        }
        return major;
    }
}
