package cn.zykj.cloud.config;

import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * <p>
 *  MyBatis Plus分页配置
 * </p>
 *
 * @author Olaf
 * @since 2018/11/17
 */

@EnableTransactionManagement
@Configuration
@MapperScan("cn.zykj.cloud.mapper")
public class MybatisPlusConfig {

    /**
     * 分页插件
     */
    @Bean
    public PaginationInterceptor paginationInterceptor() {
        return new PaginationInterceptor();
    }
}
