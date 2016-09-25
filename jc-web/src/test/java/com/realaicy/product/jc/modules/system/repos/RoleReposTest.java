package com.realaicy.product.jc.modules.system.repos;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.system.model.Role;
import com.realaicy.product.jc.modules.system.model.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;

import static org.junit.Assert.*;

/**
 * Created by realaicy on 16/7/6.
 * xxx
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@Transactional
public class RoleReposTest {
    @Autowired
    RoleRepos roleRepos;

    @Test
    public void testCreateRole() throws Exception {
        Role role = new Role();
        role.setRoleName("测试角色" + LocalDateTime.now());
        roleRepos.save(role);
    }

    @Test
    public void findByName() throws Exception {
        System.out.println(roleRepos.findByRoleName("秘书处处长"));
    }
}