package com.realaicy.product.jc.realglobal.realerror;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.concurrent.atomic.AtomicLong;

@Controller
@RequestMapping("/g/realerror")
public class RealErrorController {

    private final AtomicLong counter = new AtomicLong();

    @RequestMapping("/session/expire")
    @ResponseBody
    public String sessionExpire() {
        System.out.println("");
        return "expire";
    }

    @RequestMapping("/session/invalid")
    @ResponseBody
    public String sessionInvalid() {
        System.out.println("");
        return "invalid";
    }


    @RequestMapping("/session/expire2")
    public ResponseEntity<?> fetchWellData() {
        return new ResponseEntity<>("real error haha", HttpStatus.FORBIDDEN);
    }

}
