package com.realaicy.product.jc.modules.system.web;

import com.realaicy.product.jc.common.exception.SaveNewException;
import com.realaicy.product.jc.modules.system.model.Org;
import com.realaicy.product.jc.modules.system.model.Role;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.product.jc.modules.system.model.UserSec;
import com.realaicy.product.jc.modules.system.model.vo.UserVO;
import com.realaicy.product.jc.modules.system.repos.UserSecRepos;
import com.realaicy.product.jc.modules.system.service.RoleService;
import com.realaicy.product.jc.modules.system.service.UserService;
import com.realaicy.product.jc.realglobal.web.CRUDWithVOController;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.lang.reflect.InvocationTargetException;
import java.math.BigInteger;
import java.util.*;

/**
 * Created by realaicy on 16/7/15.
 * 登录
 */

@Controller
@RequestMapping("/system/user")
public class UserController extends CRUDWithVOController<User, Long, UserVO> {

    private UserService userService;
    private RoleService roleService;
    static final private String[] nameDic = {"username", "password", "nickname", "createTime"};
    @SuppressWarnings("unused")
    static final private List<String> editBindWhiteList = Arrays.asList("username", "password");
    static final private String pageUrl = "system/user/page";
    static final private String newEntityUrl = "system/user/add";
    static final private String editEntityUrl = "system/user/add";
    static final private String listEntityUrl = "system/user/page";
    static final private String searchEntityUrl = "system/user/search";
    static final private String userToRoleUrl = "system/user/user2role";


    @Autowired
    public UserController(UserService userService, RoleService roleService, PasswordEncoder bcryptEncoder, UserSecRepos userSecRepos) {
        super(userService, "user", nameDic, pageUrl, newEntityUrl, editEntityUrl,
                listEntityUrl, searchEntityUrl, User.class, UserVO.class, editBindWhiteList);
        this.userService = userService;
        this.roleService = roleService;
        this.bcryptEncoder = bcryptEncoder;
        this.userSecRepos = userSecRepos;
    }

    private final PasswordEncoder bcryptEncoder;

    private final UserSecRepos userSecRepos;

    @ResponseBody
    @RequestMapping(method = RequestMethod.GET, value = "/list4select", produces = "application/json")
    public Map<String, Object> findAllBySpecificationToSelect(
            @RequestParam(value = "q") String search) {

        Map<String, Object> info = new HashMap<>();

        List<User> users = userService.findByUsernameContaining(search);
        info.put("items", users);
        return info;
    }

    @RequestMapping(value = "/user2role/{userid}", method = RequestMethod.GET)
    public String userToRole(@PathVariable("userid") final Long userid,
                             Model model) {
        User user = userService.findOne(userid);

        List<Org> orgs = getOrgService().findByCascadeIDStartingWith("");


        List<Role> allRoles = roleService.findByOrgID(BigInteger.valueOf(user.getOrgID()));


        List<Role> existRoles = user.getRoles();
        List<Role> availableRoles;


        model.addAttribute("allRoles", roleService.findByOrgID(BigInteger.valueOf(user.getOrgID())));

        return userToRoleUrl;
    }

    @Override
    protected void InternalSaveNew(UserVO realmodel, Long updateID, Long pid) throws SaveNewException {

        if (userService.findByName(realmodel.getUsername()) != null)
            throw new SaveNewException("error用户名称已存在!");

        realmodel.setPassword(bcryptEncoder.encode(realmodel.getPassword()));

        UserSec userSec = new UserSec();
        try {
            BeanUtils.copyProperties(userSec, realmodel);
        } catch (IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
            throw new SaveNewException(e.getMessage());

        }
        userSec.setAccountNonExpired(true);
        userSec.setCredentialsNonExpired(true);
        userSec.setAccountNonLocked(true);
        userSec.setEnabled(true);
        //userSecRepos.save(userSec);
        realmodel.setId(userSecRepos.save(userSec).getId());
        realmodel.setOrgCascadeID(getOrgService().findOne(realmodel.getOrgID()).getCascadeID());
    }

    @Override
    protected User InternalSaveUpdate(UserVO realmodel, Long updateID, Long pid) throws SaveNewException {
        User user = userService.findOne(updateID);
        user.setNickname(realmodel.getNickname());
        user.setEmail(realmodel.getEmail());
        user.setSex(realmodel.getSex());
        return user;
    }
}
