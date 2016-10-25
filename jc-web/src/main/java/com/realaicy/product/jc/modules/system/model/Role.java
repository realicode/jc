package com.realaicy.product.jc.modules.system.model;

import com.realaicy.lib.core.orm.jpa.entity.CommonDeletableEntity;

import javax.persistence.*;
import java.math.BigInteger;
import java.util.List;

/**
 * 系统角色实体类
 */
@Entity
@Table(name = "jc_sys_role")
public class Role extends CommonDeletableEntity<BigInteger> {


    /**
     * 角色名称
     */
    @Column(name = "ROLENAME")
    private String name;
    /**
     * 角色所属组织
     */
    @Column(name = "ORGID")
    private BigInteger orgID;
    /**
     * 角色名称
     */
    @Column(name = "ROLESTATUS")
    private String roleStatus;
    /**
     * 角色名称
     */
    @Column(name = "ROLETYPE")
    private String roleType;


    @ManyToMany(mappedBy = "roles")
    private List<User> users;
    /**
     * 角色所拥有的菜单
     */

    @Column(name = "MENUS")
    private String menus;
    @Column(name = "REALAUTHORITIES")
    private String realauthorities;

    public BigInteger getOrgID() {
        return orgID;
    }

    public void setOrgID(BigInteger orgID) {
        this.orgID = orgID;
    }

    public String getRealauthorities() {
        return realauthorities;
    }

    public void setRealauthorities(String realauthorities) {
        this.realauthorities = realauthorities;
    }

    public String getMenus() {
        return menus;
    }

    public void setMenus(String menus) {
        this.menus = menus;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRoleStatus() {
        return roleStatus;
    }

    public void setRoleStatus(String roleStatus) {
        this.roleStatus = roleStatus;
    }

    public String getRoleType() {
        return roleType;
    }

    public void setRoleType(String roleType) {
        this.roleType = roleType;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }


}
