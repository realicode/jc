package com.realaicy.product.jc.realglobal.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * Created by Realaicy on 2015/5/11.
 * XXX
 */
@Component
public class RealAuthenticationProvider implements AuthenticationProvider {

    @Autowired
    private RealUserDetailsService userDetailsService;

    @Override
    public Authentication authenticate(Authentication authentication)
            throws AuthenticationException {

        String username = authentication.getName();
        String password = authentication.getCredentials().toString();

        RealUserDetails user = (RealUserDetails) userDetailsService.loadUserByUsername(username);

        if (user == null) {
            throw new UsernameNotFoundException("UsernameNotFoundException");
        }

        //加密过程在这里体现
        if (!password.equals(user.getPassword())) {
            throw new BadCredentialsException("Wrong password.");
        }


        // use the credentials to try to authenticate against the third party system
        if (user.getUsername().equals("realaicy")) {
            List<GrantedAuthority> grantedAuths = new ArrayList<>();
            grantedAuths.add(new GrantedAuthority() {
                @Override
                public String getAuthority() {
                    return "superman";
                }
            });
            grantedAuths.add(new GrantedAuthority() {
                @Override
                public String getAuthority() {
                    return "admin";
                }
            });

            return new UsernamePasswordAuthenticationToken(user, password, grantedAuths);

        } else if (user.getUsername().equals("apiuser")) {
            List<GrantedAuthority> grantedAuths = new ArrayList<>();
            grantedAuths.add(new GrantedAuthority() {
                @Override
                public String getAuthority() {
                    return "apiuser";
                }
            });
            return new UsernamePasswordAuthenticationToken(user, password, grantedAuths);

        } else {
            Collection<? extends GrantedAuthority> authorities = user.getAuthorities();
            return new UsernamePasswordAuthenticationToken(user, password, authorities);
        }
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }
}
