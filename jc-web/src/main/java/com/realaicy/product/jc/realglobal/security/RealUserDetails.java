package com.realaicy.product.jc.realglobal.security;

import com.realaicy.product.jc.modules.system.model.Role;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

import java.util.*;

/**
 * Created by realaicy on 16/7/14.
 * xxx
 */

public class RealUserDetails extends User {

    private final String nickName;
    private final Long id;

    public RealUserDetails(final Long id, final String username, final String password, final String nickName, boolean enabled,
                           boolean accountNonExpired, boolean credentialsNonExpired,
                           boolean accountNonLocked,
                           final Collection<? extends GrantedAuthority> authorities) {
        super(username, password, enabled, true, true, true, authorities);
        this.nickName = nickName;
        this.id = id;
    }

    public String getNickName() {
        return nickName;
    }

    public Long getId() {
        return id;
    }


}
