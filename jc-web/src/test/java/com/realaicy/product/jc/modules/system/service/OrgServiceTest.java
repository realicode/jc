package com.realaicy.product.jc.modules.system.service;

import com.realaicy.lib.core.orm.jpa.search.BaseSpecificationsBuilder;
import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.system.model.Org;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

/**
 * Created by realaicy on 2016/9/3.
 * xxx
 */
@SuppressWarnings("SpringJavaAutowiringInspection")
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

    @Test
    public void findByCascadeIDStartingWith() throws Exception {
        final BaseSpecificationsBuilder<Org> builder = new BaseSpecificationsBuilder<>();
        builder.with("cascadeID", ":", "1.004.001", "", "*");
        final Specification<Org> spec = builder.build();

        Long childSize = orgService.count(spec);
        System.out.println("orgService: " + childSize);
    }

    //findByCascadeIDStartingWith(parent.getCascadeID());

}