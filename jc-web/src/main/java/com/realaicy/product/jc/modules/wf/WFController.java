package com.realaicy.product.jc.modules.wf;

import com.google.common.base.Joiner;
import com.realaicy.lib.core.orm.jpa.search.BaseSpecificationsBuilder;
import com.realaicy.lib.core.orm.jpa.search.SearchOperation;
import com.realaicy.product.jc.modules.system.model.Role;
import com.realaicy.product.jc.modules.system.service.UserService;
import com.realaicy.product.jc.uitl.SpringSecurityUtil;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.repository.ProcessDefinitionQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.math.BigInteger;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by realaicy on 16/6/2.
 * xx
 */
@Controller
@RequestMapping("/wf")
public class WFController {

    @Autowired
    private RepositoryService repositoryService;
    @Autowired
    private TaskService taskService;
    @Autowired
    private UserService userService;

    static final private String[] nameDic = {"id", "deploymentId", "name", "key"};


    @RequestMapping(value = "/def/page", method = RequestMethod.GET)
    public String listEntityPage(Model model) {

        List<ProcessDefinition> processDefinitionList = repositoryService.createProcessDefinitionQuery().list();
        model.addAttribute("processDefinitionList", processDefinitionList);
        return "wf/def/page";
    }

    @RequestMapping(value = "/task/page", method = RequestMethod.GET)
    public String listTaskPage(Model model) {
        Set<Role> roles =userService.findOne(SpringSecurityUtil.getCurrentRealUserDetails().getId()).getRoles();
        model.addAttribute("realroles",roles);
        model.addAttribute("username",SpringSecurityUtil.getCurrentRealUserDetails().getUsername());

        return "wf/task/page";
    }

    @ResponseBody
    @RequestMapping(value = "/task/claim/{taskid}", method = RequestMethod.GET)
    public String claimTask(@PathVariable("taskid") final String taskid) {
        taskService.claim(taskid,SpringSecurityUtil.getCurrentRealUserDetails().getUsername());

        return "ok";
    }

    @ResponseBody
    @RequestMapping(value = "/task/complete/{taskid}", method = RequestMethod.GET)
    public String completeTask(@PathVariable("taskid") final String taskid) {
        taskService.complete(taskid);
        return "ok";
    }


    @ResponseBody
    @RequestMapping(method = RequestMethod.POST, value = "/def/list4dt")
    public Map<String, Object> findAllBySpecificationToDT(
            @RequestParam(value = "start", defaultValue = "0") int start,
            @RequestParam(value = "length", defaultValue = "30") int length,
            @RequestParam(value = "order[0][column]", defaultValue = "1") int orderIndex,
            @RequestParam(value = "order[0][dir]", defaultValue = "asc") String orderType,
            @RequestParam(value = "search", required = false) final String search) {

        Map<String, Object> info = new HashMap<>();

        Sort sort;
        if (orderIndex > nameDic.length) orderIndex = 1;
        if (orderType.equals("asc"))
            sort = new Sort(Sort.Direction.ASC, nameDic[orderIndex - 1]);
        else
            sort = new Sort(Sort.Direction.DESC, nameDic[orderIndex - 1]);

        PageRequest pageRequest = new PageRequest(
                start / length, length, sort
        );
        //pageRequest.getSort().and(new Sort(Sort.Direction.ASC));

        if (search != null && !search.equals("")) {
            final BaseSpecificationsBuilder<ProcessDefinition> builder = new BaseSpecificationsBuilder<>();
            final String operationSetExper = Joiner.on("|").join(SearchOperation.SIMPLE_OPERATION_SET);
            final Pattern pattern = Pattern.compile("(\\w+?)(" + operationSetExper + ")(\\p{Punct}?)(\\w+?)(\\p{Punct}?),");
            final Matcher matcher = pattern.matcher(search + ",");
            while (matcher.find()) {
                builder.with(matcher.group(1), matcher.group(2), matcher.group(4), matcher.group(3), matcher.group(5));
            }
            final Specification<ProcessDefinition> spec = builder.build();
            info.put("data", repositoryService.createProcessDefinitionQuery().list());
            info.put("recordsFiltered", repositoryService.createProcessDefinitionQuery().list().size());

        } else {

            info.put("data", repositoryService.createProcessDefinitionQuery().list());
            info.put("recordsFiltered", repositoryService.createProcessDefinitionQuery().list().size());

        }

        info.put("recordsTotal", repositoryService.createProcessDefinitionQuery().list().size());

        return info;
    }


}
