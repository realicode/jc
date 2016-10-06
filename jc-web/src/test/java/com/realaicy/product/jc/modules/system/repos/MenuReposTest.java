package com.realaicy.product.jc.modules.system.repos;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.system.model.Menu;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

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
@SuppressWarnings("SpringJavaAutowiringInspection")
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@Transactional
@Rollback
public class MenuReposTest {

    @Autowired
    MenuRepos menuRepos;

    @Test
    public void testGetFromRoot() throws Exception {
        List<Menu> menus = menuRepos.findAllMenus();
        assertNotNull(menus);
    }

    @Test
    public void testGet() throws Exception {
        Menu menus = menuRepos.findOne(2L);
        assertNotNull(menus);

        assertThat(menus.getAutoExpand(), equalTo(true));
        assertThat(menus.getResIconExt(), equalTo(""));

        assertThat(menus.getCascadeID(), equalTo("1.001"));
        assertThat(menus.getResType(), equalTo(Short.parseShort("2")));
        assertThat(menus.getResIcon(), equalTo("fa fa-lg fa-fw fa-home"));
        assertThat(menus.getResWeight(), equalTo(Short.parseShort("1000")));
        assertThat(menus.getResIdentity(), equalTo(""));
        assertThat(menus.getCustomCode(), equalTo(""));

    }

    @Test
    public void testGreate() throws Exception {

        Menu menuParent = menuRepos.findOne(2L);
        assertNotNull(menuParent);

        Menu menuToBeCreated = new Menu();

        menuToBeCreated.setFolder(true);
        menuToBeCreated.setResWeight(Short.parseShort("1"));
        menuToBeCreated.setResType(Short.parseShort("2"));
        menuToBeCreated.setResIconExt("");
        menuToBeCreated.setParent(menuParent);
        menuToBeCreated.setStatus(Short.parseShort("1"));
        menuToBeCreated.setAutoExpand(true);
        menuToBeCreated.setCascadeID("1.001");
        menuToBeCreated.setCreaterID(1L);
        menuToBeCreated.setCreateTime(new Date());
        menuToBeCreated.setUpdaterID(1L);
        menuToBeCreated.setUpdateTime(new Date());
        menuToBeCreated.setCustomCode("11");
        menuToBeCreated.setName("测试");
        menuToBeCreated.setResIcon("1");
        menuToBeCreated.setResIdentity("111");

        menuRepos.save(menuToBeCreated);

    }

}