package com.realaicy.product.jc.modules.system.repos;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.system.model.Tenant;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigInteger;
import java.util.Date;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;

/**
 * Created by realaicy on 2016/9/3.
 * <p>
 * xss
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@Transactional
@Rollback
public class TenantReposTest {

    @Autowired
    TenantRepos repos;

    @Test
    public void testGet() throws Exception {
        Tenant tenant = repos.findOne(BigInteger.valueOf(2));
        assertThat(tenant.getName(), equalTo("中国肿瘤临床试验稽查协作组"));
        assertThat(tenant.getResIcon(), equalTo("1"));
        assertThat(tenant.getResWeight(), equalTo(Short.parseShort("1")));
        assertThat(tenant.getResIdentity(), equalTo("1"));
        assertThat(tenant.getCustomCode(), equalTo("1"));
        assertThat(tenant.getContactName(), equalTo("闫昭"));
        assertThat(tenant.getContactTel(), equalTo("13988888888"));


    }

    @Test
    public void testGreate() throws Exception {
        Tenant tenant = repos.findOne(BigInteger.valueOf(2));
        tenant.setContactTel("13920234616");
        tenant.setContactName("刘旭东");
        tenant.setResWeight(Short.parseShort("1"));
        tenant.setStatus(Short.parseShort("1"));
        tenant.setCreaterID(BigInteger.valueOf(1));
        tenant.setCreateTime(new Date());
        tenant.setUpdaterID(BigInteger.valueOf(1));
        tenant.setUpdateTime(new Date());
        tenant.setCustomCode("11");
        tenant.setName("测试");
        tenant.setResIcon("1");
        tenant.setResIdentity("111");
        repos.save(tenant);
    }

}