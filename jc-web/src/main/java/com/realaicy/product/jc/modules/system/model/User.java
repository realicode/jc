package com.realaicy.product.jc.modules.system.model;

/**
 * Created by realaicy on 16/7/16.
 *
 * @author Realaicy
 */

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.realaicy.lib.core.orm.jpa.BaseEntity;
import com.realaicy.product.jc.modules.project.model.ProjectInfo;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * 文档实体类
 */
@Entity
@Table(name = "jc_sys_user")
public class User extends BaseEntity<Long> {


    /**
     * 所属租户
     */
    @Column(name = "TENANTID")
    private Long tenantID;

    /**
     * 所属组织
     */
    @Column(name = "ORGID")
    private Long orgID;

    /**
     * 用户名称
     */
    @Column(name = "USERNAME")
    @NotEmpty
    private String username;
    /**
     * 用户密码(加密后的密文)
     */
    @NotEmpty
    @Column(name = "PASSWORD")
    private String password;
    /**
     * 用户昵称
     */
    @NotEmpty
    @Column(name = "NICKNAME")
    private String nickname;
    /**
     * 用户邮箱地址
     */
    @Column(name = "EMAIL")
    private String email;
    /**
     * 用户年龄
     */
    @Column(name = "AGE")
    private short age;
    /**
     * 用户年龄
     */
    @Column(name = "R_TOUXIANG")
    private String portraitUrl;
    /**
     * 用户性别
     */
    @Column(name = "SEX")
    private char sex;
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
     * 用户类型
     */
    @Column(name = "USERTYPE")
    private short usertype;
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
    private String orgCascadeID;
    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "jc_sys_user_role", joinColumns = @JoinColumn(name = "USERID"),
            inverseJoinColumns = @JoinColumn(name = "ROLEID"))
    @JsonIgnore
    private List<Role> roles;
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "manager")
    @JsonIgnore
    private List<ProjectInfo> projects;

    public Long getTenantID() {
        return tenantID;
    }

    public void setTenantID(Long tenantID) {
        this.tenantID = tenantID;
    }

    public String getPortraitUrl() {
        return portraitUrl;
    }

    public void setPortraitUrl(String portraitUrl) {
        this.portraitUrl = portraitUrl;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public short getAge() {
        return age;
    }

    public void setAge(short age) {
        this.age = age;
    }

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
