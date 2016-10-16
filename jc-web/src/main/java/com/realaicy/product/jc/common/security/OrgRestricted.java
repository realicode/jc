package com.realaicy.product.jc.common.security;

/**
 * Created by realaicy on 2016/10/12.
 * xxx
 */
public interface OrgRestricted<ID> {

    boolean withinOrgRestrict(ID id);
}
