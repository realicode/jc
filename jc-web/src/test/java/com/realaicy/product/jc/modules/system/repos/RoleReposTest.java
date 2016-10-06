package com.realaicy.product.jc.modules.system.repos;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.system.model.Role;
import org.hamcrest.MatcherAssert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;

import static org.hamcrest.Matchers.equalTo;
import static org.junit.Assert.assertNotNull;

/**
 * Created by realaicy on 16/7/6.
 * xxx
 */
@SuppressWarnings("SpringJavaAutowiringInspection")
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@Transactional
@Rollback
public class RoleReposTest {
    @Autowired
    RoleRepos repos;

    @Test
    public void testCreateRole() throws Exception {
        Role role = new Role();
        role.setRoleName("测试角色" + LocalDateTime.now());
        repos.save(role);
    }

    @Test
    public void findByName() throws Exception {
        Role role = repos.findByRoleName("秘书处处长");
        assertNotNull(role);
    }

    @Test
    public void testGet() throws Exception {
        Role role = repos.findOne(6L);
        MatcherAssert.assertThat(role.getRealauthorities(), equalTo("org-r,org-c"));
        MatcherAssert.assertThat(role.getRoleType(), equalTo("1"));
        MatcherAssert.assertThat(role.getRoleStatus(), equalTo("1"));
    }

    @Test
    public void testCreate() throws Exception {
        Role role = new Role();
        role.setRoleName("测试");
        role.setMenus("1");
        role.setRealauthorities("1");
        role.setRoleStatus("1");
        role.setRoleType("1");
        repos.save(role);
    }
}