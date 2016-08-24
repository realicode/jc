package com.realaicy.product.jc.modules.system.model;

/**
 * Created by realaicy on 16/7/16.
 *
 * @author Realaicy
 */

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.realaicy.lib.core.orm.jpa.BaseEntity;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * 文档实体类
 */
@Entity
@Table(name = "jc_sys_user_sec")
public class UserSec extends BaseEntity<Long> {


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
     * 标识:各种标识
     */
    @Column(name = "ACCOUNTNONEXPIRED")
    private boolean accountNonExpired;
    @Column(name = "ACCOUNTNONLOCKED")
    private boolean accountNonLocked;
    @Column(name = "CREDENTIALSNONEXPIRED")
    private boolean credentialsNonExpired;
    @Column(name = "ENABLED")
    private boolean enabled;
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
    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "jc_sys_user_role", joinColumns = @JoinColumn(name = "USERID"),
            inverseJoinColumns = @JoinColumn(name = "ROLEID"))
    @JsonIgnore
    private List<Role> roles;

    public boolean isAccountNonExpired() {
        return accountNonExpired;
    }

    public void setAccountNonExpired(boolean accountNonExpired) {
        this.accountNonExpired = accountNonExpired;
    }

    public boolean isAccountNonLocked() {
        return accountNonLocked;
    }

    public void setAccountNonLocked(boolean accountNonLocked) {
        this.accountNonLocked = accountNonLocked;
    }

    public boolean isCredentialsNonExpired() {
        return credentialsNonExpired;
    }

    public void setCredentialsNonExpired(boolean credentialsNonExpired) {
        this.credentialsNonExpired = credentialsNonExpired;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
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

    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }


}
