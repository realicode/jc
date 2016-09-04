package com.realaicy.product.jc.common.wf.temp;

import com.realaicy.product.jc.Application;
import org.activiti.engine.HistoryService;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.repository.ProcessDefinition;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.assertEquals;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = {Application.class})
//@WebAppConfiguration
//@IntegrationTest
public class VerySimpleLeaveProcessTest {

    @Autowired
    private RepositoryService repositoryService;

    @Autowired
    private RuntimeService runtimeService;

    @Autowired
    private TaskService taskService;

    @Autowired
    private HistoryService historyService;

    @Autowired
    private ApplicantRepository applicantRepository;

    @Test
    public void testStartProcess() throws Exception {
//        // 创建流程引擎，使用内存数据库
//        ProcessEngine processEngine = ProcessEngineConfiguration
//                .createStandaloneInMemProcessEngineConfiguration()
//                .buildProcessEngine();
//
////        // 部署流程定义文件
////        RepositoryService repositoryService = processEngine.getRepositoryService();
////        String processFileName = "me/kafeitu/activiti/helloworld/sayhelloleave.bpmn";
////        repositoryService.createDeployment().addClasspathResource(processFileName)
////                .deploy();

        // 验证已部署流程定义
        ProcessDefinition processDefinition = repositoryService
                .createProcessDefinitionQuery().processDefinitionId("leavesayhello:1:27510").singleResult();
        assertEquals("leavesayhello", processDefinition.getKey());

      /*  // 启动流程并返回流程实例
        RuntimeService runtimeService = processEngine.getRuntimeService();
        ProcessInstance processInstance = runtimeService
                .startProcessInstanceByKey("leavesayhello");
        assertNotNull(processInstance);
        System.out.println("pid=" + processInstance.getId() + ", pdid="
                + processInstance.getProcessDefinitionId());*/
    }
}