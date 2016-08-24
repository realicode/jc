package com.realaicy.product.jc;

/**
 * Created by realaicy on 16/6/1.
 *
 */
import java.util.Arrays;

import com.alibaba.druid.pool.DruidDataSource;
import com.realaicy.lib.core.orm.jpa.RealRepositoryFactoryBean;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import javax.sql.DataSource;

@SpringBootApplication
@EnableJpaRepositories(repositoryFactoryBeanClass = RealRepositoryFactoryBean.class)
@EnableAspectJAutoProxy
public class Application {
    /**
     * Data source.
     *
     * @return the data source
     */
    @Bean
    @ConfigurationProperties(prefix = "datasource.druid")
    public DataSource dataSource() {
        return new DruidDataSource();
    }

    public static void main(String[] args) {

        ApplicationContext ctx = SpringApplication.run(Application.class, args);

       /* System.out.println("Let's inspect the beans provided by Spring Boot:");

        String[] beanNames = ctx.getBeanDefinitionNames();
        Arrays.sort(beanNames);
        for (String beanName : beanNames) {
            System.out.println(beanName);
        }*/
    }

}