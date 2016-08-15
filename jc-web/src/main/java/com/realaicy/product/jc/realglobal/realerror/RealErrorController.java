package com.realaicy.product.jc.realglobal.realerror;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/g/realerror")
public class RealErrorController {


    @RequestMapping("/session/expire")
    @ResponseBody
    public String sessionExpire() {
        System.out.println("");
        return "expire";
    }

    @RequestMapping("/session/invalid")
    @ResponseBody
    public String sessionInvalid(@RequestHeader(value = "User-Agent") String userAgent) {
        System.out.println("userAgent: " + userAgent);
        return "invalid";
    }


    @RequestMapping("/session/realinvalid")
    public ResponseEntity<?> sessionInvalidV2(@RequestHeader(value = "User-Agent") String userAgent,
                                              @RequestHeader(value = "x-requested-with", required = false) String ifAjax) {

        System.out.println("Realaicy userAgent V2: " + userAgent);

        if (ifAjax != null && ifAjax.equals("XMLHttpRequest")) {
            System.out.println("Realaicy userAgent V2: " + "Ajax");
        } else {
            System.out.println("Realaicy userAgent V2: " + "normal");
        }
        return new ResponseEntity<>("invalid", HttpStatus.OK);
    }

    @RequestMapping("/session/expire2")
    public ResponseEntity<?> fetchWellData() {
        return new ResponseEntity<>("real error haha", HttpStatus.FORBIDDEN);
    }

}
