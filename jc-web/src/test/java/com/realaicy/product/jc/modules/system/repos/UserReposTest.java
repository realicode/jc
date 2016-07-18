package com.realaicy.product.jc.modules.system.repos;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.doccenter.model.DocRes;
import com.realaicy.product.jc.modules.system.model.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

import static org.hamcrest.Matchers.equalTo;
import static org.junit.Assert.*;

/**
 * Created by realaicy on 16/7/6.
 * xxx
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
public class UserReposTest {

    @Autowired
    UserRepos userRepos;


    @Test
    public void testFindUser() throws Exception {
        User user = userRepos.findOne(6L);
    }

    @Test
    public void testCreateUser() throws Exception {
        User user = new User();
        user.setUsername("test_1");
        user.setNickname("刘旭东");
        userRepos.save(user);
    }

    @Test
    public void testCreateBatchUser() throws Exception {
        User user;
        for (int i = 5; i < 100; i++) {
            user = new User();
            user.setUsername("test_" + i);
            user.setNickname("刘旭东");
            userRepos.save(user);
        }

    }
}