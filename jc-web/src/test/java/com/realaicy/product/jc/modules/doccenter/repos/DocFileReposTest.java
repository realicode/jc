package com.realaicy.product.jc.modules.doccenter.repos;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.doccenter.model.DocFileRes;
import com.realaicy.product.jc.modules.project.model.PJApply;
import com.sun.tools.doclets.internal.toolkit.util.DocFile;
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

/**
 * Created by realaicy on 2016/10/24.
 * xxx
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
public class DocFileReposTest {
    @Autowired
    DocFileRepos docFileRepos;

    @Test
    public void testFind() throws Exception {
        DocFileRes docFileRes = docFileRepos.findOne(BigInteger.valueOf(2));

        System.out.println();

    }
}