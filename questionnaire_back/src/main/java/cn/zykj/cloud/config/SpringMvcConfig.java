package cn.zykj.cloud.config;

import cn.zykj.cloud.utils.Constants;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.*;


/**
 * <p>
 *  Spring Mvc拦截器
 * </p>
 *
 * @author Olaf
 * @since 2018/11/16
 */
@Configuration
public class SpringMvcConfig implements WebMvcConfigurer {

    // 允许所有跨域请求，并且携带Token请求头
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**").exposedHeaders(Constants.TOKEN_NAME);
    }

    // 拦截请求
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new RequestInterceptor())
                .addPathPatterns("/**")
                .excludePathPatterns("/public/**","/student/**");
    }
}
