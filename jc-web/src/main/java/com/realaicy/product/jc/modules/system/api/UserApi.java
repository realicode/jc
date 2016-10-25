package com.realaicy.product.jc.modules.system.api;

import com.realaicy.product.jc.common.exception.SaveNewException;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.product.jc.modules.system.service.UserService;
import com.realaicy.product.jc.realglobal.web.CRUDController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigInteger;

/**
 * Created by realaicy on 16/7/15.
 * xxx
 */

@RestController
@RequestMapping("/api/system/users")
public class UserApi extends CRUDController<User, BigInteger> {

    private UserService userService;

    @Autowired
    public UserApi(UserService userService) {
        super(userService, "user", null, "", "", " ", "", "", null);
        this.userService = userService;
    }

    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @Override
    protected void InternalSaveNew(User realmodel, BigInteger updateID, BigInteger pid) throws SaveNewException {

    }

    @Override
    protected User InternalSaveUpdate(User realmodel, BigInteger updateID, BigInteger pid) throws SaveNewException {
        return null;
    }
}
