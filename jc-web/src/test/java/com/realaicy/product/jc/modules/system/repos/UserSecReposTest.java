package com.realaicy.product.jc.modules.system.repos;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.system.model.UserSec;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigInteger;

import static org.junit.Assert.assertNotNull;

/**
 * Created by realaicy on 16/7/6.
 * xxx
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@Transactional
@Rollback
public class UserSecReposTest {

    @Autowired
    UserSecRepos userSecRepos;

    @Test
    public void testFindUser() throws Exception {
        UserSec userDetails = userSecRepos.findOne(BigInteger.valueOf(6));
        assertNotNull(userDetails);
    }

}