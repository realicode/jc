package com.realaicy.product.jc.modules.project.repos;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.project.model.PJApply;
import com.realaicy.product.jc.modules.project.model.ProjectInfo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import static org.hamcrest.Matchers.equalTo;
import static org.junit.Assert.*;

/**
 * Created by realaicy on 2016/9/5.
 * xxx
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@Transactional
@Rollback
public class ProjectInfoReposTest {
    @Autowired
    ProjectInfoRepos repos;


    @Test
    public void testFind() throws Exception {
        ProjectInfo projectInfo = repos.findOne(4L);
        assertThat(projectInfo.getManager().getUsername(), equalTo("realaicy"));

    }
}