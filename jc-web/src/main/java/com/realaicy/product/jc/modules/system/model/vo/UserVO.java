package com.realaicy.product.jc.modules.system.model.vo;

import com.realaicy.lib.core.model.vo.BaseVO;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.Column;
import java.math.BigInteger;

/**
 * Created by realaicy on 2016/10/16.
 * <p>
 * xxs
 */
public class UserVO extends BaseVO<BigInteger> {


    private BigInteger id;
    /**
     * 用户名称
     */
    @NotEmpty
    private String username;
    /**
     * 用户昵称
     */
    @NotEmpty
    private String nickname;
    /**
     * 用户密码(加密后的密文)
     */
    @NotEmpty
    private String password;
    /**
     * 所属组织
     */
    private BigInteger orgID;
    /**
     * 用户所属组织语义ID
     */
    private String orgCascadeID;
    /**
     * 用户邮箱地址
     */
    @NotEmpty
    private String email;
    /**
     * 用户头像
     */
    private String portraitUrl;
    /**
     * 用户性别
     */
    private char sex;

    public BigInteger getId() {
        return id;
    }

    public void setId(BigInteger id) {
        this.id = id;
    }

    public BigInteger getOrgID() {
        return orgID;
    }

    public void setOrgID(BigInteger orgID) {
        this.orgID = orgID;
    }

    public String getOrgCascadeID() {
        return orgCascadeID;
    }

    public void setOrgCascadeID(String orgCascadeID) {
        this.orgCascadeID = orgCascadeID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPortraitUrl() {
        return portraitUrl;
    }

    public void setPortraitUrl(String portraitUrl) {
        this.portraitUrl = portraitUrl;
    }

    public char getSex() {
        return sex;
    }

    public void setSex(char sex) {
        this.sex = sex;
    }
}
