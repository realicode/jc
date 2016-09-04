package com.realaicy.product.jc.modules.system.model;

/**
 * Created by realaicy on 16/7/16.
 *
 * @author Realaicy
 */

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.realaicy.lib.core.orm.jpa.BaseEntity;
import org.hibernate.annotations.Where;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 文档实体类
 */
@Entity
@Table(name = "jc_sys_org")
@NamedNativeQueries({
        //@NamedNativeQuery(name = "realTestNativeQuery", query = "SELECT a.firstname, a.lastname FROM Author a"),
        //@NamedNativeQuery(name = "realTestNativeQuery", query = "SELECT a.id, a.name FROM jc_common_tree a",
        //resultClass = DocRes.class)
        //@NamedNativeQuery(name = "selectAuthorValue", query = "SELECT a.id, a.firstname, a.lastname, count(b.id)
        // as numBooks FROM Author a JOIN BookAuthor ba on a.id = ba.authorid JOIN Book b ON b.id = ba.bookid GROUP BY a.id",
        // resultSetMapping = "AuthorValueMapping")
})
public class Org extends BaseEntity<Long> {


    /**
     * 资源名称
     */
    @Column(name = "NAME")
    @JsonProperty("title")
    private String name;


    /**
     * 资源图标
     */
    @Column(name = "RES_ICON")
    private Short resIcon;

    /**
     * 资源排序权值
     */
    @Column(name = "RES_WEIGHT")
    private Short resWeight;

    /**
     * 是否显示
     */
    @Column(name = "IS_SHOW")
    private Boolean isShow = Boolean.FALSE;

    /**
     * 资源是否是叶子节点
     */
    @Column(name = "IS_FOLDER")
    @JsonProperty("folder")
    private Boolean isFolder = Boolean.FALSE;

    /**
     * 资源是否自动展开子孙节点
     */
    @Column(name = "IS_AUTO_EXPAND")
    @JsonProperty("expanded")
    private Boolean isAutoExpand = Boolean.FALSE;

    /**
     * 资源状态
     */
    @Column(name = "STATUS")
    private short status = 1;


    /**
     * 资源标识字符串(对应用户所持有的权限字符串)
     */
    @Column(name = "IDENTITY")
    private String resIdentity = "";
    /**
     * 联系人姓名
     */
    @Column(name = "CONTACT_NAME")
    private String contactName;
    /**
     * 联系人电话
     */
    @Column(name = "CONTACT_TEL")
    private String contactTel;
    /**
     * 资源创建时间戳
     */
    @Column(name = "CREATETIME")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
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
     * 自定义扩展
     */
    @Column(name = "CUSTOM_CODE")
    private String customCode = "";
    /**
     * 自定义扩展
     */

    @Column(name = "CASCADE_ID")
    private String cascadeID = "";
    /**
     * 父亲菜单对象
     */
    @ManyToOne
    @JoinColumn(name = "PID")
    @JsonIgnore
    private Org parent;
    /**
     * 孩子菜单对象
     */
    @OneToMany(fetch = FetchType.EAGER, mappedBy = "parent")
    @OrderBy("resWeight")
    @Where(clause = "IS_FOLDER='1'")
    private List<Org> children = new ArrayList<>();

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    public String getContactTel() {
        return contactTel;
    }

    public void setContactTel(String contactTel) {
        this.contactTel = contactTel;
    }

    public String getCascadeID() {
        return cascadeID;
    }

    public void setCascadeID(String cascadeID) {
        this.cascadeID = cascadeID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Short getResIcon() {
        return resIcon;
    }

    public void setResIcon(Short resIcon) {
        this.resIcon = resIcon;
    }

    public Short getResWeight() {
        return resWeight;
    }

    public void setResWeight(Short resWeight) {
        this.resWeight = resWeight;
    }

    public Boolean getShow() {
        return isShow;
    }

    public void setShow(Boolean show) {
        isShow = show;
    }

    public Boolean getFolder() {
        return isFolder;
    }

    public void setFolder(Boolean folder) {
        isFolder = folder;
    }

    public Boolean getAutoExpand() {
        return isAutoExpand;
    }

    public void setAutoExpand(Boolean autoExpand) {
        isAutoExpand = autoExpand;
    }

    public short getStatus() {
        return status;
    }

    public void setStatus(short status) {
        this.status = status;
    }

    public String getResIdentity() {
        return resIdentity;
    }

    public void setResIdentity(String resIdentity) {
        this.resIdentity = resIdentity;
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

    public String getCustomCode() {
        return customCode;
    }

    public void setCustomCode(String customCode) {
        this.customCode = customCode;
    }

    public Org getParent() {
        return parent;
    }

    public void setParent(Org parent) {
        this.parent = parent;
    }

    public List<Org> getChildren() {
        return children;
    }

    public void setChildren(List<Org> children) {
        this.children = children;
    }
}
