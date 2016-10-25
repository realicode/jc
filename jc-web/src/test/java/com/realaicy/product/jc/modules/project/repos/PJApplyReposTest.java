package com.realaicy.product.jc.modules.project.repos;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.project.model.PJApply;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.product.jc.modules.system.repos.UserRepos;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigInteger;

import static org.hamcrest.Matchers.equalTo;
import static org.junit.Assert.*;
import static org.junit.Assert.assertThat;

/**
 * Created by realaicy on 2016/9/4.
 * xxx
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@Transactional
@Rollback
public class PJApplyReposTest {

    @Autowired
    PJApplyRepos pjApplyRepos;


    @Test
    public void testFind() throws Exception {
        PJApply pjApply = pjApplyRepos.findOne(BigInteger.valueOf(1) );
        assertThat(pjApply.getSubject(), equalTo("河南肿瘤医院GCP稽查申请"));

    }
}