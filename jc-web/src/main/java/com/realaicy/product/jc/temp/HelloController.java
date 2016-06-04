package com.realaicy.product.jc.temp;

/**
 * Created by realaicy on 16/6/1.
 * 临时测试
 */
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HelloController {

    @RequestMapping("/hello")
    public String index() {
        return "Greetings from Spring Boot! This is 刘旭东!";
    }

}