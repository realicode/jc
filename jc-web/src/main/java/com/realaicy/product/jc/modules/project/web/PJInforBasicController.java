package com.realaicy.product.jc.modules.project.web;

import com.realaicy.product.jc.common.exception.SaveNewException;
import com.realaicy.product.jc.modules.project.model.PJInforBasic;
import com.realaicy.product.jc.modules.project.model.vo.Manager4Select;
import com.realaicy.product.jc.modules.project.model.vo.PJInforBasicVO;
import com.realaicy.product.jc.modules.project.service.PJInforBasicService;
import com.realaicy.product.jc.modules.system.model.Role;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.product.jc.modules.system.service.RoleService;
import com.realaicy.product.jc.modules.system.service.UserService;
import com.realaicy.product.jc.realglobal.web.CRUDWithVOController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.tags.ArgumentAware;

import java.math.BigInteger;
import java.util.*;

/**
 * Created by realaicy on 16/7/15.
 * 项目基本信息
 */

@Controller
@RequestMapping("/project/infor/basic")
public class PJInforBasicController extends CRUDWithVOController<PJInforBasic, BigInteger, PJInforBasicVO> {

    static final private String[] nameDic = {"status"};
    static final private List<String> bindingWhiteList = Arrays.asList("password");
    static final private String pageUrl = "project/info/page";
    static final private String newEntityUrl = "project/info/basic/create";
    static final private String editEntityUrl = "project/info/add";
    static final private String listEntityUrl = "project/info/page";
    static final private String searchEntityUrl = "project/info/search";
    private PJInforBasicService service;
    private RoleService roleService;
    private UserService userService;
    @Autowired
    public PJInforBasicController(PJInforBasicService service, RoleService roleService,UserService userService) {
        super(service, "user", nameDic, pageUrl, newEntityUrl, editEntityUrl,
                listEntityUrl, searchEntityUrl, PJInforBasic.class, PJInforBasicVO.class, bindingWhiteList);
        this.service = service;
        this.roleService = roleService;
        this.userService = userService;
    }



    @ResponseBody
    @RequestMapping(value = "/m2", method = RequestMethod.GET)
    public String getManager2() {
        String info = "[{id: 0, text: '王雨萌'}, {id: 1, text: '刘备'}, {id: 2, text: '关羽'}, {id: 3, text: '司马无敌'}]";
        return info;
    }

    @ResponseBody
    @RequestMapping(value = "/m3", method = RequestMethod.GET)
    public Map<String, Object> getManager3() {
        Map<String, Object> info = new HashMap<>();

        List<Manager4Select> lists = new ArrayList<>();

        List<Manager4Select> childa = new ArrayList<>();
        List<Manager4Select> childb = new ArrayList<>();


        Manager4Select manager4Selecta = new Manager4Select();
        manager4Selecta.setId("9999");
        manager4Selecta.setText("测试数据");

        Manager4Select manager4Selecta_1 = new Manager4Select();
        manager4Selecta_1.setId("9997");
        manager4Selecta_1.setText("测试数据111");

        childa.add(manager4Selecta_1);
        manager4Selecta.setChildren(childa);

        lists.add(manager4Selecta);

        Manager4Select manager4Selectb = new Manager4Select();
        manager4Selectb.setId("9998");
        manager4Selectb.setText("数据库中真实数据");

        Role role =  roleService.findOne(BigInteger.valueOf(65));
        for(User user:role.getUsers()){
            Manager4Select manager4Select1 = new Manager4Select();
            manager4Select1.setId(user.getId().toString());
            manager4Select1.setText(user.getNickname());
            childb.add(manager4Select1);
        }
        manager4Selectb.setChildren(childb);
        lists.add(manager4Selectb);

        info.put("items", lists);
        return info;
    }


    @Override
    protected void InternalSaveNew(PJInforBasicVO realmodel, BigInteger updateID, BigInteger pid) throws SaveNewException {

    }

    @Override
    protected PJInforBasic InternalSaveUpdate(PJInforBasicVO realmodel, BigInteger updateID, BigInteger pid) throws SaveNewException {
        return null;
    }

    @Override
    protected void extendSave(PJInforBasic po, BigInteger updateID, BigInteger pid) {

    }
    @Override
    protected void extendSave(PJInforBasic po, PJInforBasicVO realmodel) {
        po.setManager(userService.findOne(realmodel.getManagerID()));
    }
}
