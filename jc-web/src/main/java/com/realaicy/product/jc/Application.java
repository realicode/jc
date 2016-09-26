package com.realaicy.product.jc;

/**
 * Created by realaicy on 16/6/1.
 * <p>
 * xxxx
 */

import com.alibaba.druid.pool.DruidDataSource;
import com.realaicy.lib.core.orm.jpa.RealRepositoryFactoryBean;
import com.realaicy.product.jc.realglobal.security.SessionCounterListener;
import org.activiti.spring.SpringProcessEngineConfiguration;
import org.activiti.spring.boot.ProcessEngineConfigurationConfigurer;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import javax.servlet.http.HttpSessionListener;
import javax.sql.DataSource;

@SpringBootApplication
@EnableJpaRepositories(repositoryFactoryBeanClass = RealRepositoryFactoryBean.class)
@EnableAspectJAutoProxy
@EnableCaching
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


    @Bean
    public HttpSessionListener httpSessionListener() {
        return new SessionCounterListener();
    }


    @Bean
    ProcessEngineConfigurationConfigurer processEngineConfigurationConfigurer() {
        return new ProcessEngineConfigurationConfigurer() {
            @Override
            public void configure(SpringProcessEngineConfiguration springProcessEngineConfiguration) {
                springProcessEngineConfiguration.getProcessEngineConfiguration().setDbIdentityUsed(false);
            }
        };
    }


    public static void main(String[] args) {

        ApplicationContext ctx = SpringApplication.run(Application.class, args);

       /* System.out.println("Let's inspect the beans provided by Spring Boot:");O

        String[] beanNames = ctx.getBeanDefinitionNames();
        Arrays.sort(beanNames);
        for (String beanName : beanNames) {
            System.out.println(beanName);
        }*/
    }

}