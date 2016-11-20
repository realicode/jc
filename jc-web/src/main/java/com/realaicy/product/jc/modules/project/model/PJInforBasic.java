package com.realaicy.product.jc.modules.project.model;

import com.realaicy.lib.core.orm.jpa.entity.CommonDeletableEntity;
import com.realaicy.product.jc.modules.system.model.User;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.math.BigInteger;
import java.util.Date;

/**
 * 实体类
 */
@Entity
@Table(name = "jc_pj_info_basic")
public class PJInforBasic extends CommonDeletableEntity<BigInteger> {


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
     * 稽查工作流ID
     */
    @Column(name = "WFDEFID")
    private String wfID;
    /**
     * 稽查工作检查项模板ID
     */
    @Column(name = "CHKTEPID")
    private String chkTepID;
    /**
     * 项目预算
     */
    @Column(name = "BUDGET")
    private int budget;

    /**
     * 项目启动时间
     */
    @Column(name = "STARTDATE")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Temporal(TemporalType.TIMESTAMP)
    private Date pjStartDate;

    /**
     * 项目截止时间
     */
    @Column(name = "DEADLINEDATE")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Temporal(TemporalType.TIMESTAMP)
    private Date pjDeadlineDate;

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


}
