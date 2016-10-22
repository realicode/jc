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
public class OrgVO extends BaseVO<BigInteger> {

    /**
     * 角色名称
     */
    @NotNull
    private String name;
    
    /**
     * 联系人姓名
     */
    @NotNull
    private String contactName;

    /**
     * 联系人邮箱
     */
    private String contactEmail;

    /**
     * 联系人电话
     */
    @NotNull
    private String contactTel;

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    public String getContactEmail() {
        return contactEmail;
    }

    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail;
    }

    public String getContactTel() {
        return contactTel;
    }

    public void setContactTel(String contactTel) {
        this.contactTel = contactTel;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
