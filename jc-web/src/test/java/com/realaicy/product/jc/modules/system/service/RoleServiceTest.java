package com.realaicy.product.jc.modules.system.service;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.system.model.Org;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

/**
 * Created by realaicy on 2016/9/3.
 * xxx
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
public class RoleServiceTest {

    @Autowired
    RoleService roleService;

    @Test
    public void getRoleByUser() {

    }

}