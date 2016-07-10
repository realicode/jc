package com.realaicy.product.jc.modules.doccenter.repos;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.doccenter.model.DocRes;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

import static org.hamcrest.Matchers.equalTo;
import static org.junit.Assert.*;

/**
 * Created by realaicy on 16/7/6.
 * xxx
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
public class DocReposTest {

    @Autowired
    private DocRepos docRepos;

    @Test
    public void testFindAllMenus() throws Exception {
        int sizeTemp = docRepos.findAllMenus().size();
        System.out.println("sizeTemp: " + sizeTemp);

    }

    @Test
    public void testFindOne() throws Exception {
        DocRes docRes = docRepos.findOne(1L);
        assertThat(docRes.getName(), equalTo("测试资源1"));
        DocRes docRes2 = docRepos.findOne(2L);
        assertThat(docRes2.getName(), equalTo("测试资源2"));

    }

    @Test
    public void testCreateRes() throws Exception {

        DocRes docResParent = docRepos.findOne(1L);
        assertThat(docResParent.getName(), equalTo("测试资源1"));

        Short resType = 1;
        Short resICON = 1;
        Short resWeight = 1;
        Short resStatus = 1;
        DocRes docRes = new DocRes();
        docRes.setAutoExpand(true);
        docRes.setCreateTime(new Date());
        docRes.setCreaterID(1L);
        docRes.setUpdaterID(1L);
        docRes.setUpdateTime(new Date());
        docRes.setName("测试资源" + new Date());
        docRes.setResType(Short.valueOf("1"));
        docRes.setParent(docResParent);
        docRepos.save(docRes);

    }

    @Test
    public void testNative() throws Exception {

        assertThat(docRepos.findAResWithNative(3L).getName(), equalTo("测试资源3"));

    }

}