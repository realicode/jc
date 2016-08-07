package com.realaicy.product.jc.modules.system.model;

/**
 * Created by realaicy on 16/7/16.
 *
 * @author Realaicy
 */

import com.alibaba.druid.sql.visitor.functions.Char;
import com.realaicy.lib.core.orm.jpa.BaseEntity;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * 系统角色实体类
 */
@Entity
@Table(name = "jc_sys_role")
public class Role extends BaseEntity<Long> {


    /**
     * 角色名称
     */
    @Column(name = "ROLENAME")
    private String roleName;

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

    /**
     * 角色创建时间戳
     */
    @Column(name = "CREATETIME")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createTime;

    /**
     * 角色创建者
     */
    @Column(name = "CREATERID")
    private Long createrID;

    /**
     * 角色修改时间戳
     */
    @Column(name = "UPDATETIME")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Temporal(TemporalType.TIMESTAMP)
    private Date updateTime;

    /**
     * 角色修改者
     */
    @Column(name = "UPDATERID")
    private Long updaterID;

    @ManyToMany(mappedBy = "roles")
    private List<User> users;

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
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

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }


}
