package com.realaicy.product.jc.modules.doccenter;

import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.impl.SimpleFilterProvider;
import com.realaicy.lib.core.mapper.JsonMapper;
import com.realaicy.product.jc.common.exception.SaveNewException;
import com.realaicy.product.jc.modules.doccenter.model.DocFileRes;
import com.realaicy.product.jc.modules.doccenter.model.DocRes;
import com.realaicy.product.jc.modules.doccenter.model.vo.DocVO;
import com.realaicy.product.jc.modules.doccenter.repos.DocFileRepos;
import com.realaicy.product.jc.modules.doccenter.repos.DocRepos;
import com.realaicy.product.jc.modules.doccenter.service.DocFileService;
import com.realaicy.product.jc.modules.doccenter.service.DocService;
import com.realaicy.product.jc.modules.system.model.Org;
import com.realaicy.product.jc.modules.system.model.vo.OrgVO;
import com.realaicy.product.jc.modules.system.service.OrgService;
import com.realaicy.product.jc.realglobal.web.TreeController;
import com.realaicy.product.jc.uitl.SpringSecurityUtil;
import com.sun.javadoc.Doc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.math.BigInteger;
import java.util.Collections;
import java.util.List;

/**
 * Created by realaicy on 16/6/2.
 * xx
 */
@Controller
@RequestMapping("/doccenter/catalog")
public class DocController extends TreeController<DocRes, Long, DocVO> {


    private DocService docService;
    static final private String[] nameDic = {"username", "password", "nickname", "createTime"};
    static final private List<String> bindingWhiteList = Collections.singletonList("password");
    static final private String pageUrl = "doccenter/catalog/page";
    static final private String newEntityUrl = "doccenter/catalog/add";
    static final private String editEntityUrl = "doccenter/catalog/add";
    static final private String listEntityUrl = "doccenter/catalog/page";
    static final private String searchEntityUrl = "doccenter/catalog/search";

    private final
    DocRepos docRepos;

    private final
    DocFileRepos docFileRepos;

    private final
    DocFileService docFileService;

    private static JsonMapper binder = JsonMapper.nonDefaultMapper();

    @Autowired
    public DocController(DocFileService docFileService, DocFileRepos docFileRepos, DocRepos docRepos, DocService docService) {


        super(docService, "doc/catalog", nameDic, pageUrl, newEntityUrl, editEntityUrl,
                listEntityUrl, searchEntityUrl, DocRes.class, DocVO.class, bindingWhiteList);

        this.docFileService = docFileService;
        this.docFileRepos = docFileRepos;
        this.docRepos = docRepos;
        this.docService = docService;
    }


    @RequestMapping("/m2")
    public String manager2() {
        return "doccenter/m2";
    }


    @RequestMapping("/catalog/listDocAll")
    @ResponseBody
    public String listDocAll() {

        DocFileRes docFileRes = docFileRepos.findOne(1L);

        FilterProvider filters = new SimpleFilterProvider().addFilter("realFilter2", SimpleBeanPropertyFilter.serializeAllExcept("updateTime"));

        binder.getMapper().setFilterProvider(filters);

        return binder.toJson(docFileRes);
    }

    @RequestMapping(value = "/catalog/edit", method = RequestMethod.GET)
    @ResponseBody
    public String editDocCatalog(@RequestParam(value = "id") String id, @RequestParam(value = "title") String name) {

//        DocRes docRes = docRepos.findOne(Long.parseLong(id));
//
//        System.out.println(docRes.getName());
        return docService.updateDocCatalog(Long.parseLong(id), name);
    }

    @RequestMapping(value = "/catalog/create", method = RequestMethod.POST)
    @ResponseBody
    public String createDocCatalog(@RequestParam(value = "id") String id, @RequestParam(value = "title") String name) {

        return docService.createDocCatalog(Long.parseLong(id), name, false);
    }

    @RequestMapping(value = "/catalog/createSub", method = RequestMethod.POST)
    @ResponseBody
    public String createDocCatalogSub(@RequestParam(value = "id") String id, @RequestParam(value = "title") String name) {

        return docService.createDocCatalog(Long.parseLong(id), name, true);
    }

    @Override
    public Long getRealID() {
        //noinspection ConstantConditions
        Long orgID = SpringSecurityUtil.getCurrentRealUserDetails().getOrgID();
        return docService.findOrgRootDocCatalogID(BigInteger.valueOf(orgID)).getId();
    }

    @Override
    protected void InternalSaveNew(DocVO realmodel, Long updateID, Long pid) throws SaveNewException {

    }

    @Override
    protected DocRes InternalSaveUpdate(DocVO realmodel, Long updateID, Long pid) throws SaveNewException {
        return null;
    }
}
