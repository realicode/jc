package com.realaicy.product.jc.modules.project.repos;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.project.model.PJInforBasic;
import com.realaicy.product.jc.modules.system.repos.UserRepos;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigInteger;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import static org.hamcrest.Matchers.equalTo;
import static org.junit.Assert.*;

/**
 * Created by realaicy on 2016/9/5.
 * xxx
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@Transactional()
public class PJInforBasicReposTest {
    @Autowired
    PJInforBasicRepos repos;

    @Autowired
    UserRepos userRepos;

    @Test
    @Rollback(false)
    public void testCreate() throws Exception {

        DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
        PJInforBasic pjInforBasic = new PJInforBasic();
        pjInforBasic.setPjName("test_测试项目3");
        pjInforBasic.setBudget(100000);
        pjInforBasic.setPjStartDate(format1.parse("2016-01-01"));
        pjInforBasic.setPjDeadlineDate(format1.parse("2016-12-01"));
        pjInforBasic.setManager(userRepos.findOne(BigInteger.valueOf(6)));
        repos.save(pjInforBasic);
    }

    @Test
    public void testFind() throws Exception {

        PJInforBasic PJInforBasic = repos.findOne(BigInteger.valueOf(4));
    }
}