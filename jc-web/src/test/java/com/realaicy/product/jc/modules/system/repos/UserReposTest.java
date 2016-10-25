package com.realaicy.product.jc.modules.system.repos;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.system.model.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigInteger;
import java.util.List;

import static org.junit.Assert.assertNotNull;

@SuppressWarnings("SpringJavaAutowiringInspection")
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@Transactional
@Rollback
public class UserReposTest {

    @Autowired
    UserRepos userRepos;


    @Test
    public void testFindUser() throws Exception {
        User user = userRepos.findOne(BigInteger.valueOf(6));
        assertNotNull(user);
    }

    @Test
    public void testFindContaining() throws Exception {
        List<User> users = userRepos.findTop10ByUsernameContaining("1");
        assertNotNull(users);
    }


    @Test
    public void testCreateUser() throws Exception {
        User user = new User();
        user.setUsername("realtest_1");
        user.setNickname("刘旭东");
        user.setPassword("123456");
        userRepos.save(user);
    }

    @Test
    public void testCreateBatchUser() throws Exception {
        User user;
        for (int i = 5; i < 100; i++) {
            user = new User();
            user.setUsername("realtest_" + i);
            user.setNickname("刘旭东");
            user.setPassword("123456");
            userRepos.save(user);
        }

    }
}