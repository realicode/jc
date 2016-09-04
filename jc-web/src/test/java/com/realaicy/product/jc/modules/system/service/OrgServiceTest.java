package com.realaicy.product.jc.modules.system.service;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.system.model.Org;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;
import static org.junit.Assert.*;
import static org.junit.Assert.assertNotNull;

/**
 * Created by realaicy on 2016/9/3.
 * xxx
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
public class OrgServiceTest {

    @Autowired
    OrgService orgService;

    @Test
    public void findByNameWithInAParent() throws Exception {
        Org org = orgService.findByNameWithInAParent("中国肿瘤临床试验稽查协作组", 2L);
        assertNotNull(org);

        Org orgNotExist = orgService.findByNameWithInAParent("中国肿瘤临床试验稽查协作组XXX", 2L);
        assertNull(orgNotExist);
    }

}