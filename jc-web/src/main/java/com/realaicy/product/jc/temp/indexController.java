package com.realaicy.product.jc.temp;

import com.realaicy.product.jc.realglobal.security.RealUserDetails;
import org.springframework.data.jpa.convert.threeten.Jsr310JpaConverters;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

/**
 * Created by realaicy on 16/6/2.
 * xx
 */
@Controller

public class indexController {
    @RequestMapping("/")
    public String index(@RequestParam(value = "name", required = false, defaultValue = "World V2") String name, Model model) {
        model.addAttribute("name", name + "V2");
        model.addAttribute("realsign", new Date());

        DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-mm-dd hh:mm");
        String landing = LocalDateTime.now().format(format);

        model.addAttribute("lastNotificationTime", "最后更新时间: " + landing);
        model.addAttribute("usernickname", ((RealUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getUsername());

        return "index";
    }
}
