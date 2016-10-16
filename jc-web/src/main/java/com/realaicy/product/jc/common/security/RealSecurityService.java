package com.realaicy.product.jc.common.security;

import org.springframework.stereotype.Component;

/**
 * Created by realaicy on 2016/10/13.
 * xx
 */
@Component
public class RealSecurityService {
    public boolean hasPermission(String key) {
        return true;
    }
}
