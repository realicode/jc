package com.realaicy.product.jc.modules.project.service;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.system.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.hamcrest.Matchers.equalTo;
import static org.junit.Assert.*;

/**
 * Created by realaicy on 2016/9/4.
 * xx
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
public class PJApplyServiceTest {

    @Autowired
    PJApplyService service;

    @Test
    public void find() throws Exception {
        assertThat(service.findOne(1L).getSubject(), equalTo("河南肿瘤医院GCP稽查申请"));

    }

}