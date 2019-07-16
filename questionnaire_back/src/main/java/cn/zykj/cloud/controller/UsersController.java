package cn.zykj.cloud.controller;


import cn.zykj.cloud.entity.Student;
import cn.zykj.cloud.entity.Users;
import cn.zykj.cloud.service.UsersService;
import cn.zykj.cloud.utils.Auth;
import cn.zykj.cloud.utils.Constants;
import cn.zykj.cloud.utils.TResult;
import cn.zykj.cloud.utils.TResultCode;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.UUID;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Olaf
 * @since 2018-12-19
 */
// 该控制类允许所有用户访问
@RestController
@RequestMapping("/public")
public class UsersController {

    private UsersService usersService;

    @Autowired
    public UsersController(UsersService usersService) {
        this.usersService = usersService;
    }

    // 用户登陆
    @PostMapping("login")
    public TResult UserLogin(HttpServletResponse response, String account, String password) {
        Users users = usersService.UserLogin(account, password);
        if (users != null) {
            response.setHeader(Constants.TOKEN_NAME, users.getToken());
            switch (users.getRole()) {
                case Constants.ADMIN_ROLE:
                    return TResult.success(TResultCode.ADMIN_LOGIN_SUCCESS);
                case Constants.TEACHER_ROLE:
                    return TResult.success(TResultCode.TEACHER_LOGIN_SUCCESS);
                case Constants.QUESTIONNAIRE_ROLE:
                    return TResult.success(TResultCode.QUESTIONNAIRE_LOGIN_SUCCESS);
            }
            return TResult.success(TResultCode.MAJOR_LOGIN_SUCCESS);
        } else {
            return TResult.failure(TResultCode.LOGIN_FAILURE);
        }
    }

    //！！！----新增:获取专业
    @PostMapping("getMajor")
    public  TResult getMajor(){
        List<String> major = usersService.getMajor();

        return TResult.success(major);
    }
    @PostMapping("logout")
    public TResult UserLogout() {

        return TResult.success(TResultCode.ADMIN_LOGIN_SUCCESS);
    }

    @GetMapping(value="sele")
    public JSONObject insertUser(){




        JSONObject result = new JSONObject();

        result.put("User",usersService.getById("00d8525ada0d44a29bea332f3e6ec9db"));

        return result;

    }




}

