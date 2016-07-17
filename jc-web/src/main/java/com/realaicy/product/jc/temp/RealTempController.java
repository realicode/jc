package com.realaicy.product.jc.temp;

/**
 * Created by realaicy on 16/6/1.
 * xx
 */


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;

@Controller
@RequestMapping("/temp")
public class RealTempController {

    @RequestMapping("/temp")
    public String greeting(@RequestParam(value = "name", required = false, defaultValue = "World V2") String name, Model model) {
        model.addAttribute("name", name + "V2");
        model.addAttribute("realsign", new Date());

        return "greeting";
    }

    @RequestMapping("/blank")
    public String blank(@RequestParam(value = "name", required = false, defaultValue = "World V2") String name, Model model) {
        model.addAttribute("name", name + "V2");
        model.addAttribute("realsign", new Date());

        return "temp/blank";
    }


}