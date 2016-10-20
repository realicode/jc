package com.realaicy.product.jc.modules.system.repos;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.system.model.Role;
import com.realaicy.product.jc.modules.system.model.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by realaicy on 16/7/6.
 * xxx
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
public class UserRoleReposTest {
    @Autowired
    RoleRepos roleRepos;
    @Autowired
    UserRepos userRepos;

    @Test
    public void testCreateUserAndRole() throws Exception {

        Role role = new Role();
        role.setName("测试角色4");
        roleRepos.save(role);

        User user = new User();
        user.setUsername("test_4");
        user.setNickname("刘旭东");
        Set<Role> roleList = new HashSet<>();
        roleList.add(role);
        user.setRoles(roleList);
        userRepos.saveAndFlush(user);

    }

    @Test
    public void testUpdateUserRole() throws Exception {

        User user = userRepos.findOne(5L);
        Role role = roleRepos.findOne(2L);

        Set<Role> roleList = user.getRoles();
        roleList.add(role);

        user.setRoles(roleList);

        userRepos.saveAndFlush(user);
    }
}