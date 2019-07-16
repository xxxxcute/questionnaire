package cn.zykj.cloud.generator;

import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;

/**
 * <p>
 *  Mybatis-plus 自动代码生成器
 * </p>
 *
 * @author Olaf
 * @since 2018/11/16
 */
public class CodeGenerator {
    /**
     * <p>
     * MySQL 生成演示
     * </p>
     */
    public static void main(String[] args) {
        // 全局配置
        GlobalConfig gc = new GlobalConfig();
        gc.setOutputDir("src");   //生成文件的保存路径
        gc.setFileOverride(true);       //文件覆盖，覆盖已存在的同名目录文件
        gc.setActiveRecord(true);       // AR特性
        gc.setEnableCache(true);        //开启二级缓存,<cache type="org.mybatis.caches.ehcache.LoggingEhcache"/>
        gc.setBaseResultMap(true);      //生成通用查询映射结果，BaseResultMap
        gc.setBaseColumnList(true);     //生成通用查询结果列，Base_Column_List
        gc.setIdType(IdType.UUID);      //主键生成策略：AUTO(数据库自增)、INPUT(用户输入)、ID_WORKER(全局唯一ID，默认)、UUID(全局唯一ID，uuid)
        gc.setServiceName("%sService"); //如果不设置该属性，则生成的Service接口会带上前缀I -> IUserService
        gc.setAuthor("Zxy");      //作者

        // 数据源配置
        DataSourceConfig dsc = new DataSourceConfig();
        dsc.setDbType(DbType.MYSQL);
        dsc.setDriverName("com.mysql.jdbc.Driver");
        dsc.setUsername("root");
        dsc.setPassword("123456");
        dsc.setUrl("jdbc:mysql://localhost:3306/cloud?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8");

        // 策略配置
        StrategyConfig sc = new StrategyConfig();
//        sc.setDbColumnUnderline(true);   //数据库中表名、字段名是否以下划线方式命名的
        sc.setNaming(NamingStrategy.underline_to_camel); //实体类名生成策略，underline_to_camel（驼峰方式）
        sc.setInclude(new String[] {"count_major_point"});    //需要生成对应实体类的表
//        sc.setCapitalMode(true);       //全局大写命名？？？ 不知道干啥的

        // 包配置
        PackageConfig pc = new PackageConfig();
        pc.setParent("cn.zykj");     //包名
        pc.setModuleName("cloud");   //模块名

        AutoGenerator ag = new AutoGenerator();
        ag.setGlobalConfig(gc);
        ag.setDataSource(dsc);
        ag.setStrategy(sc);
        ag.setPackageInfo(pc);

        // 执行生成
        ag.execute();
    }
}
