package com.realaicy.product.jc.modules.system.web;

import com.realaicy.lib.core.mapper.JsonMapper;
import com.realaicy.product.jc.common.exception.SaveNewException;
import com.realaicy.product.jc.modules.system.model.Org;
import com.realaicy.product.jc.modules.system.model.Role;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.product.jc.modules.system.model.UserSec;
import com.realaicy.product.jc.modules.system.model.vo.User2RoleVO;
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

    private static JsonMapper binder = JsonMapper.nonDefaultMapper();


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

        User2RoleVO user2RoleVO = new User2RoleVO();

        Org org = getOrgService().findOne(user.getOrgID());

        user2RoleVO = productVONode(org, user.getRoles());

        model.addAttribute("user2role", binder.toJson(user2RoleVO));

        model.addAttribute("userid", userid);

        return userToRoleUrl;
    }

    @RequestMapping(value = "/u2rsave", method = RequestMethod.POST)
    @ResponseBody
    public String userToRoleSave(@RequestParam(value = "userid", required = false) Long userid,
                                 @RequestParam(value = "user2role", required = false) String user2role) {

        User user = userService.findOne(userid);

        String roleNames = "";
        user.getRoles().clear();
        user.setRolenames(roleNames);
        userService.save(user);
        if (user2role != null && !Objects.equals(user2role, "")) {
            for (String str : user2role.split(",")) {
                Role roleTemp = roleService.findOne(Long.valueOf(str));
                user.getRoles().add(roleService.findOne(Long.valueOf(str)));
                roleNames += roleTemp.getName();
                roleNames += ",";
            }
            user.setRolenames(roleNames.substring(0, roleNames.length() - 1));
            userService.save(user);
        }


        return "ok";
    }


    private User2RoleVO productVONode(Org org, Set<Role> roles) {
        User2RoleVO user2RoleVO = new User2RoleVO();
        user2RoleVO.setId(org.getId());
        user2RoleVO.setName(org.getName());
        user2RoleVO.setFolder(true);
        user2RoleVO.setIfHideCheckbox(true);
        List<Role> rolesTemp = roleService.findByOrgIDAndDeleteFlag(BigInteger.valueOf(org.getId()), false);
        List<User2RoleVO> childrenTemp = new ArrayList<>();
        if (rolesTemp.size() > 1) {
            for (Role role : rolesTemp) {
                User2RoleVO user2RoleVOTemp = new User2RoleVO();
                user2RoleVOTemp.setId(role.getId());
                user2RoleVOTemp.setName(role.getName());
                if (roles.contains(role))
                    user2RoleVOTemp.setSelected(true);
                childrenTemp.add(user2RoleVOTemp);
            }
        }

        if (org.getChildren().size() > 1) {//如果有孩子 则递归处理孩子
            for (Org orgChild : org.getChildren()) {
                childrenTemp.add(productVONode(orgChild, roles));
            }
        }
        user2RoleVO.setChildren(childrenTemp);
        return user2RoleVO;

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
