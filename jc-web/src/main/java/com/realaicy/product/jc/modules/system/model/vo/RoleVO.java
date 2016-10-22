package com.realaicy.product.jc.modules.system.model.vo;

import com.realaicy.lib.core.model.vo.BaseVO;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import java.math.BigInteger;

/**
 * Created by realaicy on 2016/10/16.
 * <p>
 * xxs
 */
public class RoleVO extends BaseVO<Long> {

    /**
     * 角色名称
     */
    @NotNull
    private String name;
    /**
     * 角色所属组织
     */
    private BigInteger orgID;

    public BigInteger getOrgID() {
        return orgID;
    }

    public void setOrgID(BigInteger orgID) {
        this.orgID = orgID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
