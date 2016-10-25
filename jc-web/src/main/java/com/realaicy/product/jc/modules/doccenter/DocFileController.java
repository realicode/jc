package com.realaicy.product.jc.modules.doccenter;

import com.google.common.base.Joiner;
import com.realaicy.lib.core.orm.jpa.search.BaseSpecificationsBuilder;
import com.realaicy.lib.core.orm.jpa.search.SearchOperation;
import com.realaicy.lib.core.orm.plugin.LogicDeletable;
import com.realaicy.product.jc.common.exception.SaveNewException;
import com.realaicy.product.jc.modules.doccenter.model.DocFileRes;
import com.realaicy.product.jc.modules.doccenter.model.vo.DocFileVO;
import com.realaicy.product.jc.modules.doccenter.service.DocFileService;
import com.realaicy.product.jc.modules.doccenter.service.DocService;
import com.realaicy.product.jc.realglobal.web.CRUDWithVOController;
import com.realaicy.product.jc.uitl.SpringSecurityUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.math.BigInteger;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static com.realaicy.lib.core.utils.RealBeanUtils.getNullPropertyNames;

/**
 * Created by realaicy on 16/6/2.
 * xx
 */
@Controller
@RequestMapping("/doccenter/file")
public class DocFileController extends CRUDWithVOController<DocFileRes, BigInteger, DocFileVO> {

    static final private String[] nameDic = {"name"};


    static final private List<String> bindingWhiteList = Collections.singletonList("password");
    static final private String pageUrl = "doccenter/file/page";
    static final private String newEntityUrl = "doccenter/file/add";
    static final private String editEntityUrl = "doccenter/file/add";
    static final private String listEntityUrl = "doccenter/file/page";
    static final private String searchEntityUrl = "doccenter/file/search";
    private final DocFileService docFileService;
    private final DocService docService;

    @Autowired
    public DocFileController(DocFileService docFileService, DocService docService) {

        super(docFileService, "doc/file", nameDic, pageUrl, newEntityUrl, editEntityUrl,
                listEntityUrl, searchEntityUrl, DocFileRes.class, DocFileVO.class, bindingWhiteList);

        this.docFileService = docFileService;
        this.docService = docService;
    }

    @Override
    public Map<String, Object> findAllBySpecificationToDT(@RequestParam(value = "start", defaultValue = "0") int start,
                                                          @RequestParam(value = "length", defaultValue = "30") int length,
                                                          @RequestParam(value = "order[0][column]", defaultValue = "1") int orderIndex,
                                                          @RequestParam(value = "order[0][dir]", defaultValue = "asc") String orderType,
                                                          @RequestParam(value = "search", required = false) String search,
                                                          @RequestParam(value = "catalogID", required = false) String catalogID) {
        if (!checkAuth("r", getaClass().getSimpleName()))
            return null;

        Map<String, Object> info = new HashMap<>();

        Sort sort;
        if (orderIndex > nameDic.length) orderIndex = 1;
        if (orderType.equals("asc"))
            sort = new Sort(Sort.Direction.ASC, nameDic[orderIndex - 1]);
        else
            sort = new Sort(Sort.Direction.DESC, nameDic[orderIndex - 1]);

        PageRequest pageRequest = new PageRequest(
                start / length, length, sort
        );
        //pageRequest.getSort().and(new Sort(Sort.Direction.ASC));

        final BaseSpecificationsBuilder<DocFileRes> builder = new BaseSpecificationsBuilder<>();
        final String operationSetExper = Joiner.on("|").join(SearchOperation.SIMPLE_OPERATION_SET);
        final Pattern pattern = Pattern.compile("(\\w+?)(" + operationSetExper + ")(\\p{Punct}?)(\\p{L}+?)(\\p{Punct}?),");
        final Matcher matcher = pattern.matcher(search + ",");
        while (matcher.find()) {
            builder.with(matcher.group(1), matcher.group(2), matcher.group(4), matcher.group(3), matcher.group(5));
        }

        if (catalogID == null || catalogID.equals("")) {
            //noinspection ConstantConditions
            catalogID = String.valueOf(docService.findOrgRootDocCatalogID(SpringSecurityUtil.getCurrentRealUserDetails().getOrgID()).getId());
        }

        builder.with("catalogID", ":",
                catalogID, "", "");

        if (LogicDeletable.class.isAssignableFrom(getaClass())) {
            builder.with("deleteFlag", ":", false, "", "");
        }

        final Specification<DocFileRes> spec = builder.build();
        info.put("data", getService().findAll(spec, pageRequest));
        info.put("recordsFiltered", getService().count(spec));
        info.put("recordsTotal", getService().count());
        return info;
    }

    @Override
    protected void InternalSaveNew(DocFileVO realmodel, BigInteger updateID, BigInteger pid) throws SaveNewException {

    }

    @Override
    protected DocFileRes InternalSaveUpdate(DocFileVO realmodel, BigInteger updateID, BigInteger pid)
            throws SaveNewException {
        return null;
    }

    @Override
    protected void extendSave(DocFileRes po, BigInteger updateID, BigInteger pid) {

    }

    @RequestMapping(value = "/savefile", method = RequestMethod.POST)
    @ResponseBody
    public String saveFile(@Valid @ModelAttribute("realmodel") final DocFileVO realmodel,
                           final BindingResult result,
                           @RequestParam(value = "updateflag") String updateflag,
                           @RequestParam(value = "updateID", required = false) BigInteger updateID,
                           @RequestParam(value = "catalogID") BigInteger catalogID,
                           @RequestParam(value = "realfileUrl") String realfileUrl,
                           @RequestParam(value = "realMF") String realMF) {

        if (!checkAuth("c", getaClass().getSimpleName()))
            return getNoAuthString();

        if (updateflag.equals("new")) {
            if (result.hasErrors()) {
                return "error绑定异常（非页面提交，你是机器人？）";
            }


            DocFileRes po = new DocFileRes();
            BeanUtils.copyProperties(realmodel, po, getNullPropertyNames(realmodel));
            po.setCatalogID(catalogID);
            po.setUri(realfileUrl);
            po.setModule(realMF);

            po.setCreateTime(new Date());
            //noinspection unchecked,ConstantConditions
            po.setCreaterID(SpringSecurityUtil.getCurrentPrincipal().getId());
            po.setUpdateTime(po.getCreateTime());
            po.setUpdaterID(po.getCreaterID());

            docFileService.save(po);
            return "ok";

        } else if (updateflag.equals("editedit")) {//edit
            System.out.println(updateID);
            DocFileRes po = docFileService.findOne(updateID);
            BeanUtils.copyProperties(realmodel, po, getNullPropertyNames(realmodel));
            docFileService.save(po);
            return "ok";
        }// end of edit
        return null;
    }
}
