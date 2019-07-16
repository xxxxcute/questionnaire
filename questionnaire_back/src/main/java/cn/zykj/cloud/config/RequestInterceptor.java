package cn.zykj.cloud.config;

import cn.zykj.cloud.entity.Student;
import cn.zykj.cloud.entity.Users;
import cn.zykj.cloud.service.StudentService;
import cn.zykj.cloud.service.UsersService;
import cn.zykj.cloud.service.impl.StudentServiceImpl;
import cn.zykj.cloud.utils.*;
import net.sf.json.JSONObject;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * <p>
 *  spring mvc api 拦截器 配置
 * </p>
 *
 * @author Olaf
 * @since 2018-12-19
 */
public class RequestInterceptor implements HandlerInterceptor {

    private UsersService usersService = SpringBeanFactoryUtil.getBean(UsersService.class);
    private StudentServiceImpl studentServiceImpl = SpringBeanFactoryUtil.getBean(StudentServiceImpl.class);

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        // 允许跨域 （拦截器问题）
        response.setHeader("Access-Control-Allow-Origin","*");
        response.setHeader("Access-Control-Allow-Credentials", "true");
        response.setHeader("Access-Control-Allow-Methods", "*");
        response.setHeader("Access-Control-Max-Age", "5000");
        response.setHeader("Access-Control-Allow-Headers", "*");
        // spring boot拦截器 http请求在正式请求前会发送一个OPTIONS请求用以测试通畅性，拦截器需要跳过此请求方式。
        if (request.getMethod().equals(RequestMethod.OPTIONS.toString())) {
            return true;
        }
        return Login(response, request, handler);
    }

    private boolean Login(HttpServletResponse response, HttpServletRequest request, Object handler) throws IOException {
        // 获取请求头中的Token
        String authHeader = request.getHeader(Constants.TOKEN_NAME);
        try{
            // 如果请求头为空，说明未登陆，返回401状态码
            if (authHeader.equals("null")) {
                response.sendError(HttpServletResponse.SC_UNAUTHORIZED);
                return false;
            }
            //-----------------增加学生角色拦截处理
            Users users = usersService.UserInfo(JWT.getUserInfo(request).get(Constants.TOKEN_ACCOUNT));
            Student student = studentServiceImpl.studentInfo(JWT.getUserInfo(request).get(Constants.TOKEN_ACCOUNT));


            // 如果Token是伪造的，则拒绝访问，返回403状态码
            if ((users == null || !users.getToken().equals(authHeader))&& ( student == null || !student.getToken().equals(authHeader))) {
                response.sendError(HttpServletResponse.SC_FORBIDDEN);
                return false;
            } else {
                // 根据各个控制器的权限注解，区分用户权限。
                Auth auth = ((HandlerMethod) handler).getBeanType().getAnnotation(Auth.class);
                if (auth == null) {
                    return true;
                }
                String role = auth.Role();

                if (role.equals(users.getRole())) {
                    return true;
                } else if (role.equals(Constants.MAJOR_ROLE)) {
                    if (!users.getRole().equals(Constants.TEACHER_ROLE) && !users.getRole().equals(Constants.ADMIN_ROLE)) {
                        return true;
                    } else {
                        response.sendError(HttpServletResponse.SC_FORBIDDEN);
                        return false;
                    }
                } else {
                    response.sendError(HttpServletResponse.SC_FORBIDDEN);
                    return false;
                }
            }

        } catch (Exception e){
            // 请求头携带的Token失效，状态改为未登陆状态，返回401状态码
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED);
            return false;
        }
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}