package com.realaicy.product.jc.modules.system.service;

import com.google.common.base.Joiner;
import com.realaicy.lib.core.orm.jpa.search.BaseSpecificationsBuilder;
import com.realaicy.lib.core.orm.jpa.search.SearchOperation;
import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.system.model.Role;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.product.jc.uitl.SpringSecurityUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.test.context.support.WithUserDetails;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static org.hamcrest.Matchers.equalTo;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertThat;

/**
 * Created by realaicy on 16/7/14.
 * xxx
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@Transactional
public class UserServiceTest {
    @Autowired
    UserService userService;

    @Autowired
    UserSecService userSecService;

    @Test
    public void findByName() throws Exception {
        assertThat(userService.findByName("realaicy").getNickname(), equalTo("刘旭东"));
        assertThat(userService.findByName("test_1").getNickname(), equalTo("刘旭东"));

    }

    @Test
    public void findAllUsersWithPage() throws Exception {

        PageRequest pageRequest = new PageRequest(1, 20, Sort.Direction.ASC, "username");
        List<User> users = userService.findAllUsersWithPage(pageRequest);
        assertNotNull(users);
        assertThat(users.size(), equalTo(20));
        //Page<User> userPage = userService.findTemp(pageRequest);
        //System.out.println(userPage.getSize());
    }

    @Test
    public void findUserRoles() throws Exception {
        userService.findByName("realaicy").getRoles();
        //assertThat(userService.findByName("realaicy").getNickname(), equalTo("刘旭东"));
//        Role role =
//
//        assertThat(userService.findByName("realaicy").getRoles().contains().getName(), equalTo("超级管理员"));
    }

    @Test
    @WithUserDetails("wym")
    public void findUserRoles2() throws Exception {
        UserDetails userDetails = SpringSecurityUtil.getCurrentUserDetails();
        assertNotNull(userDetails);
        //assertThat(SpringSecurityUtil.getCurrentUserDetails().getAuthorities().size(), equalTo("2"));
    }

    @Test
    public void findTemp() throws Exception {
        Sort sort;
        sort = new Sort(Sort.Direction.ASC, "username");

        PageRequest pageRequest = new PageRequest(
                0, 10, sort
        );
        //pageRequest.getSort().and(new Sort(Sort.Direction.ASC));

        final BaseSpecificationsBuilder<User> builder = new BaseSpecificationsBuilder<>();
        final String operationSetExper = Joiner.on("|").join(SearchOperation.SIMPLE_OPERATION_SET);

        builder.with("deleteFlag", ":", false, "", "");
        builder.with("orgCascadeID", ":", "1.001", "", "*");


        final Specification<User> spec = builder.build();
        Map<String, Object> info = new HashMap<>();
        info.put("data", userService.findAll(spec, pageRequest));
//        info.put("data22", userService.findAll(spec));
        info.put("recordsFiltered", userService.count(spec));
        info.put("recordsTotal", userService.count());
        System.out.println();
    }

}