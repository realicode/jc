package com.realaicy.product.jc.common.wf.temp;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.project.model.PJInforBasic;
import com.realaicy.product.jc.modules.project.repos.PJInforBasicRepos;
import org.activiti.engine.HistoryService;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.IntegrationTest;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = {Application.class})
@WebAppConfiguration
@IntegrationTest
public class SimpleJCTest {

    @Autowired
    private RuntimeService runtimeService;

    @Autowired
    private TaskService taskService;

    @Autowired
    private HistoryService historyService;

    @Autowired
    private PJInforBasicRepos PJInforBasicRepos;

    @Autowired
    private RepositoryService repositoryService;


    @Test
    public void testFindTask() {
        Task task = taskService.createTaskQuery().processInstanceBusinessKey("24")
                .taskCandidateGroup("org1_audit")
                .singleResult();
        Assert.assertEquals("稽查", task.getName());


        assertNull(taskService.createTaskQuery().processInstanceBusinessKey("24")
                .taskCandidateGroup("org1")
                .singleResult());
    }

    @Test
    public void testHappyPath() {

        // Create test applicant
        PJInforBasic PJInforBasic = new PJInforBasic();
        PJInforBasic.setPjName("测试流程" + LocalDateTime.now());
        PJInforBasic PJInforBasicSaved = PJInforBasicRepos.save(PJInforBasic);

        // Start process instance
        Map<String, Object> variables = new HashMap<String, Object>();
        variables.put("projectInfo", PJInforBasicSaved);
        ProcessInstance processInstance = runtimeService.startProcessInstanceByKey("simplejc", PJInforBasicSaved.getId().toString(), variables);

        // First, the 'phone interview' should be active
        Task task = taskService.createTaskQuery()
                .processInstanceId(processInstance.getId())
                .taskCandidateGroup("org1_secretary")
                .singleResult();
        Assert.assertEquals("确定人员、时间、行程", task.getName());
        Assert.assertEquals("comfirmDate", task.getTaskDefinitionKey());

//        // Completing the phone interview with success should trigger two new tasks
        Map<String, Object> taskVariables = new HashMap<String, Object>();
        taskVariables.put("telephoneInterviewOutcome", true);
        taskService.complete(task.getId(), taskVariables);

        List<Task> tasks = taskService.createTaskQuery()
                .processInstanceId(processInstance.getId())
                .orderByTaskName().asc()
                .list();
        Assert.assertEquals(1, tasks.size());
        Assert.assertEquals("预稽查", tasks.get(0).getName());
//
//        // Completing both should wrap up the subprocess, send out the 'welcome mail' and end the process instance
        taskVariables = new HashMap<String, Object>();
        taskVariables.put("techOk", true);
        taskService.complete(tasks.get(0).getId(), taskVariables);

        List<Task> tasks2 = taskService.createTaskQuery()
                .processInstanceId(processInstance.getId())
                .orderByTaskName().asc()
                .list();
        Assert.assertEquals(1, tasks2.size());
        Assert.assertEquals("稽查", tasks2.get(0).getName());
//
//        taskVariables = new HashMap<String, Object>();
//        taskVariables.put("financialOk", true);
//        taskService.complete(tasks.get(1).getId(), taskVariables);

        // Verify email

        // Verify process completed
        //Assert.assertEquals(1, historyService.createHistoricProcessInstanceQuery().finished().count());

    }

}
