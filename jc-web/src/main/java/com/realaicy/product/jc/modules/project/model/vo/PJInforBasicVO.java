package com.realaicy.product.jc.modules.project.model.vo;

import com.realaicy.lib.core.model.vo.BaseVO;
import com.realaicy.lib.core.orm.jpa.entity.CommonDeletableEntity;
import com.realaicy.product.jc.modules.system.model.User;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.math.BigInteger;
import java.util.Date;

/**
 * 项目基本信息VO类
 */
public class PJInforBasicVO extends BaseVO<BigInteger> {


    /**
     * 项目名称
     */
    @NotNull
    private String pjName;

    /**
     * 稽查工作流ID
     */
    private String wfID;
    /**
     * 稽查工作检查项模板ID
     */
    private String chkTepID;
    /**
     * 项目预算
     */
    private int budget;

    /**
     * 项目启动时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date pjStartDate;

    /**
     * 项目截止时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date pjDeadlineDate;

    public String getPjName() {
        return pjName;
    }

    public void setPjName(String pjName) {
        this.pjName = pjName;
    }

    public String getWfID() {
        return wfID;
    }

    public void setWfID(String wfID) {
        this.wfID = wfID;
    }

    public String getChkTepID() {
        return chkTepID;
    }

    public void setChkTepID(String chkTepID) {
        this.chkTepID = chkTepID;
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
