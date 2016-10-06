package com.realaicy.product.jc.realglobal.security;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.Collection;
import java.util.HashSet;

/**
 * Created by realaicy on 16/7/14.
 * xxx
 */

public class RealUserDetails extends User {

    private final Long id;
    private HashSet<String> realAuthorities;

    public Long getOrgID() {
        return orgID;
    }

    private final Long orgID;

    RealUserDetails(final Long id, final String username, final String password, final String nickName, boolean enabled,
                    boolean accountNonExpired, boolean credentialsNonExpired,
                    boolean accountNonLocked,
                    final Collection<? extends GrantedAuthority> authorities, HashSet<String> realAuthorities, Long orgID) {
        super(username, password, enabled, true, true, true, authorities);
        this.realAuthorities = realAuthorities;
        this.orgID = orgID;
        this.id = id;
    }

    public HashSet<String> getRealAuthorities() {
        return realAuthorities;
    }

    public Long getId() {
        return id;
    }


}
