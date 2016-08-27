package com.realaicy.product.jc.modules.system.repos;

import com.realaicy.lib.core.orm.jpa.search.BaseSpecification;
import com.realaicy.lib.core.orm.jpa.search.SearchOperation;
import com.realaicy.lib.core.orm.jpa.search.SpecSearchCriteria;
import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.system.model.User;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.data.jpa.domain.Specifications;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.collection.IsIn.isIn;
import static org.hamcrest.core.IsNot.not;

/**
 * Created by realaicy on 16/7/6.
 * xxx
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
@Transactional
public class UserReposSearch2Test {

    @Autowired
    UserRepos userRepos;

    private User chinese;


    @Test
    public void givenUsernameAndNickname_whenGettingListOfUsers_thenCorrect() {
        final BaseSpecification<User> spec = new BaseSpecification<>(
                (new SpecSearchCriteria("username", SearchOperation.LIKE, "realaicy")));
        final BaseSpecification<User> spec1 = new BaseSpecification<>(new SpecSearchCriteria("username",
                SearchOperation.LIKE, "%6%"));
        //final List<User> results = userRepos.findAll(Specifications.where(spec).and(spec1));
        final List<User> results = userRepos.findAll(Specifications.where(spec));

        final List<User> results1 = userRepos.findAll(Specifications.where(spec1));

        System.out.println("ha");
    }


}