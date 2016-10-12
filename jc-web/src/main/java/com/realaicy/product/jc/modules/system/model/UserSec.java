package com.realaicy.product.jc.modules.system.model;


import com.fasterxml.jackson.annotation.JsonIgnore;
import com.realaicy.lib.core.orm.jpa.entity.CommonDeletableEntity;

import javax.persistence.*;
import java.util.List;

/**
 * 用户安全类
 */
@Entity
@Table(name = "jc_sys_user_sec")
public class UserSec extends CommonDeletableEntity<Long> {


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

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "jc_sys_user_role", joinColumns = @JoinColumn(name = "USERID"),
            inverseJoinColumns = @JoinColumn(name = "ROLEID"))
    @JsonIgnore
    private List<Role> roles;

    public Long getOrgID() {
        return orgID;
    }

    public void setOrgID(Long orgID) {
        this.orgID = orgID;
    }

    public Long getTenantID() {
        return tenantID;
    }

    public void setTenantID(Long tenantID) {
        this.tenantID = tenantID;
    }

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

    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }


}
