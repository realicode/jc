package com.realaicy.product.jc.modules.system.service;

import com.realaicy.lib.core.service.BaseServiceWithVO;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.product.jc.modules.system.model.vo.UserVO;
import org.springframework.data.domain.PageRequest;

import java.math.BigInteger;
import java.util.List;

/**
 * Created by realaicy on 16/3/14.
 * xxx
 */
public interface UserService extends BaseServiceWithVO<User, BigInteger, UserVO> {

    User findByName(String username);

    List<User> findAllUsersWithPage(PageRequest pageRequest);

    List<User> findByUsernameContaining(String username);

    List<User> findByRoleID( BigInteger roleid);


}
