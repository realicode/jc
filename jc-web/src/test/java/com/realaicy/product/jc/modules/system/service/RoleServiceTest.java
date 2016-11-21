package com.realaicy.product.jc.modules.system.service;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.system.model.Role;
import com.realaicy.product.jc.modules.system.model.User;
import org.hibernate.Hibernate;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.*;
import java.math.BigInteger;
import java.util.List;

import static org.junit.Assert.assertNotNull;

/**
 * Created by realaicy on 2016/9/3.
 * xxx
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@Transactional
public class RoleServiceTest {

    @Autowired
    RoleService roleService;

    @Autowired
    OrgService orgService;

    @Test
    public void getRoleByOrg() {

        List<BigInteger> orgids = orgService.findAllChildIDs("%1.001%");
        List<Role> roles = roleService.findByOrgIDIn(orgids);
        assertNotNull(roles);

        Specification<Role> specification = matchOrgIDsLList(orgids);
        List<Role> roles2 = roleService.findAll(specification);
        assertNotNull(roles2);
    }

    public static Specification<Role> matchOrgIDsLList(final List<BigInteger> orgIDs) {
        return
                new Specification<Role>() {
                    @Override
                    public Predicate toPredicate(Root<Role> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
                        Expression<BigInteger> expression = root.get("orgID");
                        return expression.in(orgIDs);
                    }
                };
    }


    @Test
    public void getUsersByOrgID() {

       Role role =  roleService.findOne(BigInteger.valueOf(65));
        //List<User> users = role.getUsers();
        //Hibernate.initialize(role.getUsers());
        System.out.println(role.getUsers().size());
    }

}