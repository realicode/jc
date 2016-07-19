package com.realaicy.product.jc.modules.doccenter.repos;

import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.impl.SimpleFilterProvider;
import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.PeopleFuncTest;
import com.realaicy.product.jc.modules.doccenter.model.DocRes;
import com.realaicy.tna.modules.core.mapper.JsonMapper;
import org.junit.Test;
import org.junit.experimental.categories.Category;
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

    private static JsonMapper binder = JsonMapper.nonDefaultMapper();


    @Test
    @Category(PeopleFuncTest.class)
    public void testFindAllMenus() throws Exception {
        int sizeTemp = docRepos.findAllMenus().size();
        System.out.println("sizeTemp: " + sizeTemp);

    }

    @Test
    public void testFindOne() throws Exception {
        DocRes docRes = docRepos.findOne(1L);
        assertThat(docRes.getName(), equalTo("文档中心资源库"));
        DocRes docRes2 = docRepos.findOne(2L);
        assertThat(docRes2.getName(), equalTo("SOP文档"));

    }

    @Test
    public void testCreateRes() throws Exception {

        Long parentID = 12L;

        DocRes docResParent = docRepos.findOne(parentID);
        assertThat(docResParent.getName(), equalTo("测试文档目录层4"));

        Short resType = 1;
        Short resICON = 1;
        Short resWeight = 1000;
        Short resStatus = 1;
        DocRes docRes = new DocRes();
        docRes.setAutoExpand(true);
        docRes.setCreateTime(new Date());
        docRes.setCreaterID(parentID);
        docRes.setUpdaterID(parentID);
        docRes.setUpdateTime(new Date());
        //docRes.setName("测试文档目录层2" + new Date());
        docRes.setName("测试文档1");
        docRes.setResType(Short.valueOf("1"));
        docRes.setCascadeID("1.005.001.001.001.0000001");
        docRes.setFolder(true);
        docRes.setResWeight(resWeight);
        docRes.setParent(docResParent);
        docRepos.save(docRes);

    }

    @Test
    public void testNative() throws Exception {

        assertThat(docRepos.findAResWithNative(3L).getName(), equalTo("制度文档"));

    }

    @Test
    public void testPrintRoot() throws Exception {

        DocRes docRes = docRepos.findOne(1L);

        assertThat(docRes.getChildren().get(0).getName(), equalTo("测试文档目录层1"));


        FilterProvider filters = new SimpleFilterProvider().addFilter("realFilter", SimpleBeanPropertyFilter.serializeAllExcept("updateTime"));

        binder.getMapper().setFilterProvider(filters);

        String beanString = binder.toJson(docRes);


        System.out.println(beanString);


    }

}