package com.realaicy.product.jc.realglobal.security;

import org.springframework.security.core.GrantedAuthority;

import java.util.Collection;
import java.util.HashSet;

public final class SpringSecurityPrincipal extends RealUserDetails {

    private final String uuid;

    public SpringSecurityPrincipal(final Long id, final String username, final String password, final String nickName, boolean enabled,
                                   boolean accountNonExpired, boolean credentialsNonExpired,
                                   boolean accountNonLocked,
                                   final Collection<? extends GrantedAuthority> authorities, HashSet<String> realAuthorities, Long orgID, String orgCascadeID, final String uuidToSet) {
        super(id, username, password, nickName, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities, realAuthorities, orgID, orgCascadeID);

        uuid = uuidToSet;
    }

    // API

    public final String getUuid() {
        return uuid;
    }

}
