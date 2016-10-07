package com.realaicy.product.jc.modules.system.repos;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.system.model.Org;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigInteger;
import java.util.Date;
import java.util.List;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;
import static org.junit.Assert.assertNotNull;

/**
 * Created by realaicy on 2016/9/3.
 * <p>
 * xss
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@Transactional
@Rollback
public class OrgReposTest {

    @Autowired
    OrgRepos orgRepos;

    @Test
    public void testGetFromRoot() throws Exception {
        Org org = orgRepos.findOne(2L);
        assertThat(org.getName(), equalTo("ROOT"));
        assertThat(org.getCascadeID(), equalTo("1"));
        assertThat(org.getResIcon(), equalTo("1"));
        assertThat(org.getResWeight(), equalTo(Short.parseShort("1")));
        assertThat(org.getAutoExpand(), equalTo(true));
        assertThat(org.getResIdentity(), equalTo("1"));
        assertThat(org.getCustomCode(), equalTo("1"));

        // assertThat(org.getTenant().getName(), equalTo("中国肿瘤临床试验稽查协作组"));

    }

    @Test
    public void testGreate() throws Exception {
        Org orgParent = orgRepos.findOne(2L);
        Org org = new Org();
        org.setContactTel("13920234616");
        org.setContactName("刘旭东");
        org.setFolder(true);
        org.setResWeight(Short.parseShort("1"));
        org.setParent(orgParent);
        org.setStatus(Short.parseShort("1"));
        org.setAutoExpand(true);
        org.setCascadeID("1.001");
        org.setCreaterID(1L);
        org.setCreateTime(new Date());
        org.setUpdaterID(1L);
        org.setUpdateTime(new Date());
        org.setCustomCode("11");
        org.setName("测试");
        org.setResIcon("1");
        org.setResIdentity("111");
        //org.setTenant(orgParent.getTenant());
        orgRepos.save(org);
    }

    @Test
    public void testGetAllChildIDs() throws Exception {
        List<BigInteger> ids = orgRepos.findAllChildIDs("%1%");
        assertNotNull(ids);
        List<BigInteger> ids2 = orgRepos.findAllChildIDs("%1.004%");
        assertNotNull(ids2);
    }

}