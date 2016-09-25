package com.realaicy.product.jc.realglobal.security;

import com.realaicy.product.jc.modules.system.model.Role;
import com.realaicy.product.jc.modules.system.model.User;
import com.realaicy.product.jc.modules.system.model.UserSec;
import com.realaicy.product.jc.modules.system.repos.UserRepos;
import com.realaicy.product.jc.modules.system.repos.UserSecRepos;
import com.realaicy.product.jc.modules.system.service.RoleService;
import com.realaicy.product.jc.modules.system.service.UserSecService;
import com.realaicy.product.jc.modules.system.service.UserService;
import org.apache.commons.beanutils.BeanUtils;
import org.hibernate.engine.jdbc.connections.internal.UserSuppliedConnectionProviderImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Collection;
import java.util.List;

/**
 * Created by realaicy on 16/7/14.
 * XXX
 */
@Service("R2")
public class RealUserDetailsService implements UserDetailsService {

    @Autowired
    private UserSecService userSecService;
    @Transactional(readOnly=true)
    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        UserSec userSec;
        Collection<GrantedAuthority> grantedAuthorities;
        try {
            userSec = userSecService.findByUsername(userName);
        } catch (Exception e) {
            throw new UsernameNotFoundException("user select fail");
        }
        if (userSec == null) {
            throw new UsernameNotFoundException("no user found");
        } else {
            try {

                if (userSec.getRoles() == null || userSec.getRoles().size() < 1) {
                    grantedAuthorities = AuthorityUtils.commaSeparatedStringToAuthorityList("");
                } else {
                    StringBuilder commaBuilder = new StringBuilder();
                    for (Role role : userSec.getRoles()) {
                        commaBuilder.append(role.getRoleName()).append(",");
                    }
                    String authorities = commaBuilder.substring(0, commaBuilder.length() - 1);
                    grantedAuthorities = AuthorityUtils.commaSeparatedStringToAuthorityList(authorities);
                }

                return new RealUserDetails(userSec.getId(), userSec.getUsername(), userSec.getPassword(), userSec.getNickname()
                        , userSec.isEnabled(), userSec.isAccountNonExpired(), userSec.isCredentialsNonExpired(), userSec.isAccountNonLocked()
                        , grantedAuthorities);
            } catch (Exception e) {
                throw new UsernameNotFoundException("user role select fail");
            }
        }
    }
}
