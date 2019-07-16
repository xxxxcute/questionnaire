package cn.zykj.cloud.utils;

import java.lang.annotation.*;

// 用户权限自定义注解
@Target({ElementType.TYPE, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface Auth {
    // 角色
    String Role() default "";
}
