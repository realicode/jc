package com.realaicy.product.jc.modules.project.model;

/**
 * Created by realaicy on 16/7/16.
 *
 * @author Realaicy
 */

import com.realaicy.lib.core.orm.jpa.BaseEntity;
import com.realaicy.product.jc.modules.system.model.User;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

/**
 * 文档实体类
 */
@Entity
@Table(name = "jc_pj_info")
public class ProjectInfo extends BaseEntity<Long> {


    /**
     * 项目名称
     */
    @Column(name = "PJNAME")
    @NotEmpty
    private String pjName;

    /**
     * 合同
     */
    @Column(name = "PJCONTRACTURI")
    private String pjContractUri;

    /**
     * 申请单位联系人电话
     */
    @Column(name = "PJManagerTEL")
    private String pjManagerTel;
    /**
     * 项目预算
     */
    @Column(name = "BUDGET")
    private int budget;


    /**
     * 用户状态
     */
    @Column(name = "STATUS")
    private short status;


    /**
     * 项目启动时间
     */
    @Column(name = "PJSTARTDATE")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Temporal(TemporalType.TIMESTAMP)
    private Date pjStartDate;

    /**
     * 项目截止时间
     */
    @Column(name = "PJDEADLINEDATE")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Temporal(TemporalType.TIMESTAMP)
    private Date pjDeadlineDate;

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
     * 标识:是否已经被删除
     */
    @Column(name = "F_DELETE")
    private Boolean isDelete;
    /**
     * 项目经理
     */
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "MANAGERID")

    private User manager;

    public User getManager() {
        return manager;
    }

    public void setManager(User manager) {
        this.manager = manager;
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

    public String getPjName() {
        return pjName;
    }

    public void setPjName(String pjName) {
        this.pjName = pjName;
    }

    public String getPjContractUri() {
        return pjContractUri;
    }

    public void setPjContractUri(String pjContractUri) {
        this.pjContractUri = pjContractUri;
    }


    public String getPjManagerTel() {
        return pjManagerTel;
    }

    public void setPjManagerTel(String pjManagerTel) {
        this.pjManagerTel = pjManagerTel;
    }

    public int getBudget() {
        return budget;
    }

    public void setBudget(int budget) {
        this.budget = budget;
    }

    public Date getPjStartDate() {
        return pjStartDate;
    }

    public void setPjStartDate(Date pjStartDate) {
        this.pjStartDate = pjStartDate;
    }

    public Date getPjDeadlineDate() {
        return pjDeadlineDate;
    }

    public void setPjDeadlineDate(Date pjDeadlineDate) {
        this.pjDeadlineDate = pjDeadlineDate;
    }

    public Long getUpdaterID() {
        return updaterID;
    }

    public void setUpdaterID(Long updaterID) {
        this.updaterID = updaterID;
    }

}
