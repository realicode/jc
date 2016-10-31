package com.realaicy.product.jc;

import com.alibaba.druid.pool.DruidDataSource;
import com.realaicy.lib.core.orm.jpa.RealRepositoryFactoryBean;
import com.realaicy.lib.core.orm.jpa.SimpleBaseRepository;
import com.realaicy.product.jc.realglobal.security.SessionCounterListener;
import net.sf.ehcache.config.CacheConfiguration;
import org.activiti.spring.SpringProcessEngineConfiguration;
import org.activiti.spring.boot.ProcessEngineConfigurationConfigurer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.cache.Cache;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.CachingConfigurerSupport;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cache.ehcache.EhCacheCacheManager;
import org.springframework.cache.interceptor.*;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AdviceMode;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import javax.servlet.http.HttpSessionListener;
import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Set;

@SpringBootApplication
@EnableJpaRepositories(repositoryFactoryBeanClass = RealRepositoryFactoryBean.class)
@EnableAspectJAutoProxy
@EnableCaching
public class Application extends CachingConfigurerSupport {
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


    @Override
    @Bean
    public CacheManager cacheManager() {

        net.sf.ehcache.config.Configuration config = new net.sf.ehcache.config.Configuration();

        CacheConfiguration defaultCacheConfiguration = new CacheConfiguration();
        defaultCacheConfiguration.setName("realdefaultcache");
        defaultCacheConfiguration.setEternal(false);
        defaultCacheConfiguration.setMaxEntriesLocalHeap(200);
        //defaultCacheConfiguration.setMaxBytesLocalHeap("52428800");//50MB
        defaultCacheConfiguration.setMemoryStoreEvictionPolicy("LRU");
        config.addCache(defaultCacheConfiguration);

        CacheConfiguration wUsermenuCacheConfiguration = new CacheConfiguration();
        wUsermenuCacheConfiguration.setName("wUsermenu");
        wUsermenuCacheConfiguration.setEternal(false);
        wUsermenuCacheConfiguration.setMaxEntriesLocalHeap(200);
        //wUsermenuCacheConfiguration.setMaxBytesLocalHeap("52428800");//50MB
        wUsermenuCacheConfiguration.setMemoryStoreEvictionPolicy("LRU");
        config.addCache(wUsermenuCacheConfiguration);

        CacheConfiguration wOrgCacheConfiguration = new CacheConfiguration();
        wOrgCacheConfiguration.setName("OrgController");
        wOrgCacheConfiguration.setEternal(false);
        wOrgCacheConfiguration.setMaxEntriesLocalHeap(200);
        //wOrgCacheConfiguration.setMaxBytesLocalHeap("52428800");//50MB
        wOrgCacheConfiguration.setMemoryStoreEvictionPolicy("LRU");
        config.addCache(wOrgCacheConfiguration);

        CacheConfiguration wRoleCacheConfiguration = new CacheConfiguration();
        wRoleCacheConfiguration.setName("RoleController");
        wRoleCacheConfiguration.setEternal(false);
        wRoleCacheConfiguration.setMaxEntriesLocalHeap(200);
        //wOrgCacheConfiguration.setMaxBytesLocalHeap("52428800");//50MB
        wRoleCacheConfiguration.setMemoryStoreEvictionPolicy("LRU");
        config.addCache(wRoleCacheConfiguration);

        CacheConfiguration wUserCacheConfiguration = new CacheConfiguration();
        wUserCacheConfiguration.setName("UserController");
        wUserCacheConfiguration.setEternal(false);
        wUserCacheConfiguration.setMaxEntriesLocalHeap(200);
        //wOrgCacheConfiguration.setMaxBytesLocalHeap("52428800");//50MB
        wUserCacheConfiguration.setMemoryStoreEvictionPolicy("LRU");
        config.addCache(wUserCacheConfiguration);

        CacheConfiguration wDocCacheConfiguration = new CacheConfiguration();
        wDocCacheConfiguration.setName("DocController");
        wDocCacheConfiguration.setEternal(false);
        wDocCacheConfiguration.setMaxEntriesLocalHeap(200);
        //wOrgCacheConfiguration.setMaxBytesLocalHeap("52428800");//50MB
        wDocCacheConfiguration.setMemoryStoreEvictionPolicy("LRU");
        config.addCache(wDocCacheConfiguration);

        return new EhCacheCacheManager(net.sf.ehcache.CacheManager.newInstance(config));
    }

    @Bean
    @Override
    public KeyGenerator keyGenerator() {
        return new SimpleKeyGenerator();
    }

    @Bean
    public CacheResolver runtimeCacheResolver() {
        return new Application.RuntimeCacheResolver(cacheManager());
    }

    /**
     * Example of {@link CacheResolver} that resolve the caches at
     * runtime (i.e. based on method invocation parameters).
     * <p>Expects the second argument to hold the name of the cache to use
     */
    private static class RuntimeCacheResolver extends AbstractCacheResolver {

        Logger logger = LoggerFactory.getLogger(RuntimeCacheResolver.class);


        private RuntimeCacheResolver(CacheManager cacheManager) {
            super(cacheManager);
        }

        @Override
        protected Collection<String> getCacheNames(CacheOperationInvocationContext<?> context) {

            Set<String> cacheNames = context.getOperation().getCacheNames();

            if (context.getMethod().getName().equals("findUserMenu")) {
                return Collections.singleton("wUsermenu");
            } else {
                //Object[] objects = context.getArgs();
                String cacheName = context.getTarget().getClass().getSimpleName();
                return Collections.singleton(cacheName);
            }


        }

        @Override
        public Collection<? extends Cache> resolveCaches(CacheOperationInvocationContext<?> context) {
            Collection<String> cacheNames = getCacheNames(context);
            if (cacheNames == null) {
                return Collections.emptyList();
            } else {
                Collection<Cache> result = new ArrayList<Cache>();
                for (String cacheName : cacheNames) {
                    Cache cache = this.getCacheManager().getCache(cacheName);
                    if (cache == null) {
                        //realaicy modified!
                        logger.warn("Cannot find cache named : {} for {},so realaicy try to use default", cacheName, context.getOperation());
                        cache = this.getCacheManager().getCache("realdefaultcache");
//                        throw new IllegalArgumentException("Cannot find cache named '" +
//                                cacheName + "' for " + context.getOperation());
                    }
                    result.add(cache);
                }
                return result;
            }
        }


    }

    public static void main(String[] args) {

        @SuppressWarnings("unused")
        ApplicationContext ctx = SpringApplication.run(Application.class, args);

       /* System.out.println("Let's inspect the beans provided by Spring Boot:");O

        String[] beanNames = ctx.getBeanDefinitionNames();
        Arrays.sort(beanNames);
        for (String beanName : beanNames) {
            System.out.println(beanName);
        }*/
    }

}