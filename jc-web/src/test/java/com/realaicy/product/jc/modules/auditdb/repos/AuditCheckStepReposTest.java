package com.realaicy.product.jc.modules.auditdb.repos;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.auditdb.model.AuditCheckStep;
import com.realaicy.product.jc.modules.doccenter.model.DocFileRes;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.math.BigInteger;

import static org.junit.Assert.*;

/**
 * Created by realaicy on 2016/10/27.
 * xx
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
public class AuditCheckStepReposTest {

    @Autowired
    AuditCheckStepRepos auditCheckStepRepos;

    @Test
    public void testFind() throws Exception {

        AuditCheckStep auditCheckStep =
                auditCheckStepRepos.findTopByCheckitemIDAndDeleteFlagOrderByStepNoDesc(BigInteger.valueOf(7),false);

        System.out.println(auditCheckStep.getStepNo());

    }
}