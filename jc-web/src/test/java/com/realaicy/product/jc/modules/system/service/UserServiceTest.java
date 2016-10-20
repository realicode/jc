package com.realaicy.product.jc.modules.system.service;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.system.model.Role;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.product.jc.uitl.SpringSecurityUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.test.context.support.WithUserDetails;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import static org.hamcrest.Matchers.equalTo;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertThat;

/**
 * Created by realaicy on 16/7/14.
 * xxx
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@Transactional
public class UserServiceTest {
    @Autowired
    UserService userService;

    @Autowired
    UserSecService userSecService;

    @Test
    public void findByName() throws Exception {
        assertThat(userService.findByName("realaicy").getNickname(), equalTo("刘旭东"));
        assertThat(userService.findByName("test_1").getNickname(), equalTo("刘旭东"));

    }

    @Test
    public void findAllUsersWithPage() throws Exception {

        PageRequest pageRequest = new PageRequest(1, 20, Sort.Direction.ASC, "username");
        List<User> users = userService.findAllUsersWithPage(pageRequest);
        assertNotNull(users);
        assertThat(users.size(), equalTo(20));
        //Page<User> userPage = userService.findTemp(pageRequest);
        //System.out.println(userPage.getSize());
    }

    @Test
    public void findUserRoles() throws Exception {
        userService.findByName("realaicy").getRoles();
        //assertThat(userService.findByName("realaicy").getNickname(), equalTo("刘旭东"));
//        Role role =
//
//        assertThat(userService.findByName("realaicy").getRoles().contains().getName(), equalTo("超级管理员"));
    }

    @Test
    @WithUserDetails("wym")
    public void findUserRoles2() throws Exception {
        UserDetails userDetails = SpringSecurityUtil.getCurrentUserDetails();
        assertNotNull(userDetails);
        //assertThat(SpringSecurityUtil.getCurrentUserDetails().getAuthorities().size(), equalTo("2"));


    }


}