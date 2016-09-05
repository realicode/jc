package com.realaicy.product.jc.modules.project.model;

/**
 * Created by realaicy on 16/7/16.
 *
 * @author Realaicy
 */

import com.realaicy.lib.core.orm.jpa.BaseEntity;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

/**
 * 文档实体类
 */
@Entity
@Table(name = "jc_pj_application")
public class PJApply extends BaseEntity<Long> {


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
    /**
     * 标识:是否已经被删除
     */
    @Column(name = "F_DELETE")
    private Boolean isDelete;
    /**
     * 用户状态
     */
    @Column(name = "STATUS")
    private short status;

    /**
     * 资源创建时间戳
     */
    @Column(name = "CREATETIME")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createTime;
    /**
     * 资源创建者
     */
    @Column(name = "CREATERID")
    private Long createrID;
    /**
     * 资源修改时间戳
     */
    @Column(name = "UPDATETIME")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Temporal(TemporalType.TIMESTAMP)
    private Date updateTime;
    /**
     * 资源修改者
     */
    @Column(name = "UPDATERID")
    private Long updaterID;


    public Boolean getDelete() {
        return isDelete;
    }

    public void setDelete(Boolean delete) {
        isDelete = delete;
    }

    public short getStatus() {
        return status;
    }

    public void setStatus(short status) {
        this.status = status;
    }


    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Long getCreaterID() {
        return createrID;
    }

    public void setCreaterID(Long createrID) {
        this.createrID = createrID;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Long getUpdaterID() {
        return updaterID;
    }

    public void setUpdaterID(Long updaterID) {
        this.updaterID = updaterID;
    }

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
