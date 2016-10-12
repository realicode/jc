package com.realaicy.product.jc.modules.project.model;

import com.realaicy.lib.core.orm.jpa.entity.CommonEntity;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 文档实体类
 */
@Entity
@Table(name = "jc_pj_application")
public class PJApply extends CommonEntity<Long> {


    /**
     * 主题
     */
    @Column(name = "SUBJECT")
    @NotEmpty
    private String subject;

    /**
     * 申请单位名称
     */
    @NotEmpty
    @Column(name = "COMPNAME")
    private String compName;
    /**
     * 申请单位电话
     */
    @Column(name = "COMPTEL")
    private String compTel;

    /**
     * 申请单位联系人
     */
    @NotEmpty
    @Column(name = "CONTACTS")
    private String contacts;
    /**
     * 申请单位联系人电话
     */
    @Column(name = "CONTACTTEL")
    private String contactTel;

    /**
     * 价格
     */
    @Column(name = "PRICING")
    private String pricing;
    /**
     * 用户性别
     */
    @Column(name = "CLITYPE")
    private char cliType;

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getCompName() {
        return compName;
    }

    public void setCompName(String compName) {
        this.compName = compName;
    }

    public String getCompTel() {
        return compTel;
    }

    public void setCompTel(String compTel) {
        this.compTel = compTel;
    }

    public String getContacts() {
        return contacts;
    }

    public void setContacts(String contacts) {
        this.contacts = contacts;
    }

    public String getContactTel() {
        return contactTel;
    }

    public void setContactTel(String contactTel) {
        this.contactTel = contactTel;
    }

    public String getPricing() {
        return pricing;
    }

    public void setPricing(String pricing) {
        this.pricing = pricing;
    }

    public char getCliType() {
        return cliType;
    }

    public void setCliType(char cliType) {
        this.cliType = cliType;
    }
}
