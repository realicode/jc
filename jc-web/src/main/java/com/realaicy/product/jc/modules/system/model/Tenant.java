package com.realaicy.product.jc.modules.system.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.realaicy.lib.core.orm.jpa.entity.CommonDeletableEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.math.BigInteger;

/**
 * 多租户
 */
@Entity
@Table(name = "JC_SYS_TENANT")
public class Tenant extends CommonDeletableEntity<BigInteger> {


    /**
     * 资源名称
     */
    @Column(name = "NAME")
    @JsonProperty("title")
    private String name;


    /**
     * 资源图标
     */
    @Column(name = "RES_ICON")
    private String resIcon;

    /**
     * 资源排序权值
     */
    @Column(name = "RES_WEIGHT")
    private Short resWeight;

    /**
     * 是否显示
     */
    @Column(name = "IS_SHOW")
    private Boolean isShow = Boolean.FALSE;

    /**
     * 资源标识字符串(对应用户所持有的权限字符串)
     */
    @Column(name = "IDENTITY")
    private String resIdentity = "";
    /**
     * 联系人姓名
     */
    @Column(name = "CONTACT_NAME")
    private String contactName;
    /**
     * 联系人电话
     */
    @Column(name = "CONTACT_TEL")
    private String contactTel;

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
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

    public String getResIcon() {
        return resIcon;
    }

    public void setResIcon(String resIcon) {
        this.resIcon = resIcon;
    }

    public Short getResWeight() {
        return resWeight;
    }

    public void setResWeight(Short resWeight) {
        this.resWeight = resWeight;
    }

    public Boolean getShow() {
        return isShow;
    }

    public void setShow(Boolean show) {
        isShow = show;
    }

    public String getResIdentity() {
        return resIdentity;
    }

    public void setResIdentity(String resIdentity) {
        this.resIdentity = resIdentity;
    }

}
