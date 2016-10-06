package com.realaicy.product.jc.modules.system.web;

import com.realaicy.product.jc.Application;
import com.realaicy.product.jc.modules.system.api.UserApi;
import com.realaicy.product.jc.modules.system.service.UserService;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.http.MediaType;
import org.springframework.mock.web.MockServletContext;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import static org.hamcrest.CoreMatchers.containsString;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = {MockServletContext.class, Application.class})
@WebAppConfiguration
public class UserApiTest {

    private MockMvc mvc;

    @Autowired
    UserService userService;

    @Before
    public void setUp() throws Exception {
        mvc = MockMvcBuilders.standaloneSetup(new UserApi(userService)).build();
    }

    @Test
    public void givenAgeAndUsername_whenGettingListOfUsers_thenCorrect() throws Exception {
        String URL_PREFIX = "/api/system/users/spec?search=";
        mvc.perform(MockMvcRequestBuilders.get(URL_PREFIX + "nickname:刘旭东,age:100").accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("test_2")));
    }
}