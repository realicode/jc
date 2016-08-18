package com.realaicy.product.jc.realglobal.web;

import com.google.common.base.Joiner;
import com.realaicy.lib.core.orm.AbstractEntity;
import com.realaicy.lib.core.orm.jpa.search.BaseSpecificationsBuilder;
import com.realaicy.lib.core.orm.jpa.search.SearchOperation;
import com.realaicy.lib.core.service.BaseService;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;
import java.io.Serializable;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by realaicy on 16/8/18.
 * xxx
 */
public abstract class CRUDController<M extends AbstractEntity, ID extends Serializable> {

    private final BaseService<M, ID> service;
    private final String initFormParam;

    public CRUDController(BaseService<M, ID> service, String initFormParam) {
        this.service = service;
        this.initFormParam = initFormParam;
    }

    @RequestMapping(method = RequestMethod.GET, value = "/spec")
    public List<M> findAllBySpecification(@RequestParam(value = "search", required = false) final String search) {
        final BaseSpecificationsBuilder<M> builder = new BaseSpecificationsBuilder<>();
        final String operationSetExper = Joiner.on("|").join(SearchOperation.SIMPLE_OPERATION_SET);
        final Pattern pattern = Pattern.compile("(\\w+?)(" + operationSetExper + ")(\\p{Punct}?)(\\w+?)(\\p{Punct}?),");
        final Matcher matcher = pattern.matcher(search + ",");
        while (matcher.find()) {
            builder.with(matcher.group(1), matcher.group(2), matcher.group(4), matcher.group(3), matcher.group(5));
        }

        final Specification<M> spec = builder.build();
        return service.findAll(spec);
    }

    @RequestMapping(value = "/validation.json", method = RequestMethod.POST)
    @ResponseBody
    public Boolean ValidationResponseajaxValidation(@Valid M t, BindingResult result) {
        // same as in the example
        return Boolean.TRUE;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String initForm(Model model) {
        //service.initializeForm(model);
        return initFormParam;   // Now initialized by the constructor
    }
}
