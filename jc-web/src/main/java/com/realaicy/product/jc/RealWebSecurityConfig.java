package com.realaicy.product.jc;

import com.realaicy.product.jc.realglobal.config.StaticParams;
import com.realaicy.product.jc.realglobal.security.RealAuthenticationProvider;
import com.realaicy.product.jc.realglobal.security.SessionCounterListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.servlet.http.HttpSessionListener;

import static com.realaicy.product.jc.realglobal.config.StaticParams.PATHREGX.SB_ALL;

/**
 * Created by Realaicy on 2015/5/.
 * XX
 */
@Configuration
@EnableGlobalMethodSecurity(prePostEnabled = true)
@Order(10)
public class RealWebSecurityConfig extends WebSecurityConfigurerAdapter {




    /**
     * 自定义的AuthenticationProvider
     */
    @Autowired
    private RealAuthenticationProvider realAuthenticationProvider;


    /**
     * Configure void.
     *
     * @param http the http
     * @throws Exception the exception
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {

//        http.addFilter(realFilter());
        //http.addFilterBefore(realFilter(), UsernamePasswordAuthenticationFilter.class);
        /*http.authorizeRequests().antMatchers("/imageServlet/", "/imagecode*//**").permitAll().anyRequest()
         .fullyAuthenticated().and().formLogin().loginPage("/login")
         .failureUrl("/login?error").permitAll();*/

        http.authorizeRequests()
                .antMatchers(SB_ALL,
                        StaticParams.PATHREGX.STATIC, StaticParams.PATHREGX.TEMP_TEST,"/runtime/tasks/**").permitAll()//无需访问权限
                .antMatchers(StaticParams.PATHREGX.AUTHADMIN).hasAuthority(StaticParams.USERROLE.ROLE_ADMIN)//admin角色访问权限
                .antMatchers(StaticParams.PATHREGX.AUTHUSER).hasAuthority(StaticParams.USERROLE.ROLE_USER)//user角色访问权限
                .anyRequest()//all others request authentication
                .authenticated()
                //.and().exceptionHandling().authenticationEntryPoint(new AjaxAwareAuthenticationEntryPoint("/login"))
                .and()
                .formLogin().loginPage("/login").permitAll().and().exceptionHandling().accessDeniedPage("/403")
                .and()
                .logout().permitAll().and().sessionManagement().invalidSessionUrl("/g/realerror/session/realinvalid")
                .maximumSessions(1).expiredUrl("/g/realerror/session/expire");
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        //将验证过程交给自定义验证工具
        auth.authenticationProvider(realAuthenticationProvider);
    }
}
