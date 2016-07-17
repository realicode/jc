package com.realaicy.product.jc.modules.system.service;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.system.model.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.hamcrest.Matchers.equalTo;
import static org.junit.Assert.*;

/**
 * Created by realaicy on 16/7/14.
 * xxx
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
public class UserServiceTest {
    @Autowired
    UserService userService;

    @Test
    public void findByName() throws Exception {
        assertThat(userService.findByName("test_1").getNickname(), equalTo("刘旭东"));
    }

    @Test
    public void findAllUsersWithPage() throws Exception {

        PageRequest pageRequest = new PageRequest(0, 20, Sort.Direction.ASC, "username");
        List<User> users = userService.findAllUsersWithPage(pageRequest);
        System.out.println(users.size());
    }

}