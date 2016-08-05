package com.realaicy.product.jc.modules.doccenter.model;

/**
 * Created by realaicy on 16/7/16.
 *
 * @author Realaicy
 */

import com.fasterxml.jackson.annotation.JsonFilter;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.realaicy.tna.modules.core.orm.jpa.BaseEntity;
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
@Table(name = "jc_m_doc_allinone")
@JsonFilter("realFilter2")
@NamedNativeQueries({
        //@NamedNativeQuery(name = "realTestNativeQuery", query = "SELECT a.firstname, a.lastname FROM Author a"),
        //@NamedNativeQuery(name = "realTestNativeQuery", query = "SELECT a.id, a.name FROM jc_common_tree a",
        //resultClass = DocRes.class)
        //@NamedNativeQuery(name = "selectAuthorValue", query = "SELECT a.id, a.firstname, a.lastname, count(b.id)
        // as numBooks FROM Author a JOIN BookAuthor ba on a.id = ba.authorid JOIN Book b ON b.id = ba.bookid GROUP BY a.id",
        // resultSetMapping = "AuthorValueMapping")
})
public class DocFileRes extends BaseEntity<Long> {


    /**
     * 资源类型
     */
    @Column(name = "RES_TYPE")
    private short resType;

    /**
     * 资源名称
     */
    @Column(name = "NAME")
    @JsonProperty("title")
    private String name;

    /**
     * 资源URI
     */
    @Column(name = "URI")
    private String uri;

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
     * 父亲菜单对象ID
     *//*
    //@Column(name = "PID", unique = false, nullable = true, insertable = false, updatable = false)
    @Column(name = "PID", nullable = false, insertable = false, updatable = false)
    private Long parentID;*/

    /**
     * 父亲菜单对象
     */
    @ManyToOne
    @JoinColumn(name = "PID")
    @JsonIgnore
    private DocFileRes parent;

    /**
     * 孩子菜单对象
     */
    @OneToMany(fetch = FetchType.EAGER, mappedBy = "parent")
    @OrderBy("resWeight")
    private List<DocFileRes> children = new ArrayList<>();

    /*public DocRes() {
    }

    public DocRes(short resType, String name, String uri, Short resIcon, Short resWeight, Boolean isShow, Boolean isFolder,
                  Boolean isAutoExpand, short status, String resIdentity, Date createTime, Long createrID,
                  Date updateTime, Long updaterID, String customCode, Long parentID, String cascadeID) {
        this.resType = resType;
        this.name = name;
        this.uri = uri;
        this.resIcon = resIcon;
        this.resWeight = resWeight;
        this.isShow = isShow;
        this.isFolder = isFolder;
        this.isAutoExpand = isAutoExpand;
        this.status = status;
        this.resIdentity = resIdentity;
        this.createTime = createTime;
        this.createrID = createrID;
        this.updateTime = updateTime;
        this.updaterID = updaterID;
        this.customCode = customCode;
        this.parentID = parentID;
        this.cascadeID = cascadeID;
    }*/

    public String getCascadeID() {
        return cascadeID;
    }

    public void setCascadeID(String cascadeID) {
        this.cascadeID = cascadeID;
    }

    public short getResType() {
        return resType;
    }

    public void setResType(short resType) {
        this.resType = resType;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUri() {
        return uri;
    }

    public void setUri(String uri) {
        this.uri = uri;
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

    public DocFileRes getParent() {
        return parent;
    }

    public void setParent(DocFileRes parent) {
        this.parent = parent;
    }

    public List<DocFileRes> getChildren() {
        return children;
    }

    public void setChildren(List<DocFileRes> children) {
        this.children = children;
    }




    /*public Resource getParent() {
        return parent;
    }

    public void setParent(Resource parent) {
        this.parent = parent;
    }

    @ManyToOne
    @JoinColumn(name = "parent_id")
    private Resource parent;*/




/*
    // 父级模块
    @ManyToOne(cascade = {CascadeType.REFRESH, CascadeType.REMOVE}, optional = true)
    @JoinColumn(name = "parent_id")
    // optional关联字段是否可以为空
    private Resource parent;
    // 子级模块
    @OneToMany(cascade = {CascadeType.REFRESH, CascadeType.REMOVE}, fetch = FetchType.LAZY, mappedBy = "parent")
    private List<Resource> children;*/
}
