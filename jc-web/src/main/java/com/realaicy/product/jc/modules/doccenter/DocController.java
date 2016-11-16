package com.realaicy.product.jc.modules.doccenter;

import com.realaicy.lib.core.mapper.JsonMapper;
import com.realaicy.lib.core.orm.jpa.search.BaseSpecificationsBuilder;
import com.realaicy.product.jc.common.exception.SaveNewException;
import com.realaicy.product.jc.modules.doccenter.model.DocRes;
import com.realaicy.product.jc.modules.doccenter.model.vo.DocVO;
import com.realaicy.product.jc.modules.doccenter.service.DocService;
import com.realaicy.product.jc.realglobal.web.TreeController;
import com.realaicy.product.jc.uitl.SpringSecurityUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.math.BigInteger;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

import static com.realaicy.lib.core.utils.RealBeanUtils.getNullPropertyNames;

/**
 * Created by realaicy on 16/6/2.
 * xx
 */
@Controller
@RequestMapping("/doccenter/catalog")
public class DocController extends TreeController<DocRes, BigInteger, DocVO> {


    private DocService docService;
    static final private String[] nameDic = {"username", "password", "nickname", "createTime"};
    static final private List<String> bindingWhiteList = Collections.singletonList("password");
    static final private String pageUrl = "doccenter/catalog/page";
    static final private String newEntityUrl = "doccenter/catalog/add";
    static final private String editEntityUrl = "doccenter/catalog/add";
    static final private String listEntityUrl = "doccenter/catalog/page";
    static final private String searchEntityUrl = "doccenter/catalog/search";


    private static JsonMapper binder = JsonMapper.nonDefaultMapper();

    @Autowired
    public DocController(DocService docService) {


        super(docService, "doc/catalog", nameDic, pageUrl, newEntityUrl, editEntityUrl,
                listEntityUrl, searchEntityUrl, DocRes.class, DocVO.class, bindingWhiteList);

        this.docService = docService;
    }


    @RequestMapping("/m2")
    public String manager2() {
        return "doccenter/m2";
    }


    @RequestMapping(value = "/catalog/edit", method = RequestMethod.GET)
    @ResponseBody
    public String editDocCatalog(@RequestParam(value = "id") String id, @RequestParam(value = "title") String name) {

//        DocRes docRes = docRepos.findOne(Long.parseLong(id));
//
//        System.out.println(docRes.getName());
        return docService.updateDocCatalog(new BigInteger(id), name);
    }

    @RequestMapping(value = "/catalog/create", method = RequestMethod.POST)
    @ResponseBody
    public String createDocCatalog(@RequestParam(value = "id") String id, @RequestParam(value = "title") String name) {

        return docService.createDocCatalog(new BigInteger(id), name, false);
    }

    @RequestMapping(value = "/catalog/createSub", method = RequestMethod.POST)
    @ResponseBody
    public String createDocCatalogSub(@RequestParam(value = "id") String id, @RequestParam(value = "title") String name) {

        return docService.createDocCatalog(new BigInteger(id), name, true);
    }

    @Override
    protected void extendSave(DocRes po, BigInteger updateID, BigInteger pid) {
        super.extendSave(po, updateID, pid);


        DocRes parent = docService.findOne(pid);
        po.setParent(parent);
        po.setDeleteFlag(false);

        po.setFolder(true);
        po.setOrgID(parent.getOrgID());

        final BaseSpecificationsBuilder<DocRes> builder = new BaseSpecificationsBuilder<>();
        builder.with("cascadeID", ":", parent.getCascadeID(), "", "*");
        final Specification<DocRes> spec = builder.build();
        Long childSize = docService.count(spec);
        if (childSize == 1) {
            po.setCascadeID(parent.getCascadeID() + ".001");
        } else {
            po.setCascadeID(parent.getCascadeID() + "." + String.format("%03d", childSize));
        }
    }

    @Override
    public BigInteger getRealID() {
        //noinspection ConstantConditions
        BigInteger orgID = SpringSecurityUtil.getCurrentRealUserDetails().getOrgID();
        return docService.findOrgRootDocCatalogID(orgID).getId();
    }

    @Override
    protected void InternalSaveNew(DocVO realmodel, BigInteger updateID, BigInteger pid) throws SaveNewException {
        if (docService.findByNameWithInAParent(realmodel.getName(), pid) != null)
            throw new SaveNewException("error文档目录已存在!");


    }

    @Override
    protected DocRes InternalSaveUpdate(DocVO realmodel, BigInteger updateID, BigInteger pid) throws SaveNewException {
        DocRes docRes = docService.findOne(updateID);
        DocRes docResTemp = docService.findByNameWithInAParent(realmodel.getName(), docRes.getParent().getId());

        if (docResTemp != null
                && !Objects.equals(docResTemp.getId(), updateID))
            throw new SaveNewException("error文档目录已存在!");

        BeanUtils.copyProperties(realmodel, docRes, getNullPropertyNames(realmodel));
        return docRes;
    }



}
