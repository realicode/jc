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
@Rollback
public class UserReposSearchTest {

    @Autowired
    UserRepos userRepos;

    private User userJohn;

    private User userTom;

    private User chinese;

    @Before
    public void init() {
        userJohn = new User();
        userJohn.setUsername("John");
        userJohn.setNickname("Doe");
        userJohn.setEmail("john@doe.com");
        userJohn.setAge(Short.parseShort("22"));
        userRepos.save(userJohn);

        userTom = new User();
        userTom.setUsername("Tom");
        userTom.setNickname("Doe");
        userTom.setEmail("tom@doe.com");
        userTom.setAge(Short.parseShort("26"));
        userRepos.save(userTom);

        chinese = userRepos.findOne(6L);
    }

    @Test
    public void givenUsernameAndNickname_whenGettingListOfUsers_thenCorrect() {
        final BaseSpecification<User> spec = new BaseSpecification<>(
                (new SpecSearchCriteria("username", SearchOperation.EQUALITY, "john")));
        final BaseSpecification<User> spec1 = new BaseSpecification<>(new SpecSearchCriteria("nickname", SearchOperation.EQUALITY, "doe"));
        final List<User> results = userRepos.findAll(Specifications.where(spec).and(spec1));

        assertThat(userJohn, isIn(results));
        assertThat(userTom, not(isIn(results)));
    }

    @Test
    public void givenFirstNameInverse_whenGettingListOfUsers_thenCorrect() {
        final BaseSpecification<User> spec = new BaseSpecification<>(new SpecSearchCriteria("username", SearchOperation.NEGATION, "john"));
        final List<User> results = userRepos.findAll(Specifications.where(spec));

        assertThat(userTom, isIn(results));
        assertThat(userJohn, not(isIn(results)));
    }

    @Test
    public void givenMinAge_whenGettingListOfUsers_thenCorrect() {
        final BaseSpecification<User> spec = new BaseSpecification<>(new SpecSearchCriteria("age", SearchOperation.GREATER_THAN, "25"));
        final List<User> results = userRepos.findAll(Specifications.where(spec));

        assertThat(userTom, isIn(results));
        assertThat(userJohn, not(isIn(results)));
    }

    @Test
    public void givenFirstNamePrefix_whenGettingListOfUsers_thenCorrect() {
        final BaseSpecification<User> spec = new BaseSpecification<>(new SpecSearchCriteria("username", SearchOperation.STARTS_WITH, "jo"));
        final List<User> results = userRepos.findAll(spec);

        assertThat(userJohn, isIn(results));
        assertThat(userTom, not(isIn(results)));
    }

    @Test
    public void givenFirstNameSuffix_whenGettingListOfUsers_thenCorrect() {
        final BaseSpecification<User> spec = new BaseSpecification<>(new SpecSearchCriteria("username", SearchOperation.ENDS_WITH, "n"));
        final List<User> results = userRepos.findAll(spec);

        assertThat(userJohn, isIn(results));
        assertThat(userTom, not(isIn(results)));
    }

    @Test
    public void givenFirstNameSubstring_whenGettingListOfUsers_thenCorrect() {
        final BaseSpecification<User> spec = new BaseSpecification<>(new SpecSearchCriteria("username", SearchOperation.CONTAINS, "oh"));
        final List<User> results = userRepos.findAll(spec);

        assertThat(userJohn, isIn(results));
        assertThat(userTom, not(isIn(results)));
    }

    @Test
    public void givenAgeRange_whenGettingListOfUsers_thenCorrect() {
        final BaseSpecification<User> spec = new BaseSpecification<>(new SpecSearchCriteria("age", SearchOperation.GREATER_THAN, "20"));
        final BaseSpecification<User> spec1 = new BaseSpecification<>(new SpecSearchCriteria("age", SearchOperation.LESS_THAN, "25"));
        final List<User> results = userRepos.findAll(Specifications.where(spec).and(spec1));

        assertThat(userJohn, isIn(results));
        assertThat(userTom, not(isIn(results)));
    }
}