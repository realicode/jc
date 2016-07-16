package com.realaicy.product.jc.modules.system.model;

/**
 * Created by realaicy on 16/7/16.
 *
 * @author Realaicy
 */

import com.alibaba.druid.sql.visitor.functions.Char;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.realaicy.tna.modules.core.orm.jpa.BaseEntity;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 文档实体类
 */
@Entity
@Table(name = "jc_sys_user")
public class User extends BaseEntity<Long> {


    /**
     * 用户名称
     */
    @Column(name = "USERNAME")
    private String username;

    /**
     * 用户密码(加密后的密文)
     */
    @Column(name = "PASSWORD")
    private String password;

    /**
     * 用户昵称
     */
    @Column(name = "NICKNAME")
    private String nickname;

    /**
     * 用户性别
     */
    @Column(name = "SEX")
    private char sex;

    /**
     * 标识:是否已经被删除
     */
    @Column(name = "F_DELETE")
    private Boolean isDelete = Boolean.FALSE;

    /**
     * 用户状态
     */
    @Column(name = "STATUS")
    private short status = 1;

    /**
     * 用户类型
     */
    @Column(name = "USERTYPE")
    private short usertype = 1;

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

    /**
     * 用户所属组织语义ID
     */

    @Column(name = "ORGCASID")
    private String orgCascadeID = "";

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "jc_sys_user_role", joinColumns = @JoinColumn(name = "USERID"),
            inverseJoinColumns = @JoinColumn(name = "ROLEID"))
    private List<Role> roles;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public char getSex() {
        return sex;
    }

    public void setSex(char sex) {
        this.sex = sex;
    }

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

    public short getUsertype() {
        return usertype;
    }

    public void setUsertype(short usertype) {
        this.usertype = usertype;
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

    public String getOrgCascadeID() {
        return orgCascadeID;
    }

    public void setOrgCascadeID(String orgCascadeID) {
        this.orgCascadeID = orgCascadeID;
    }

    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }


}
