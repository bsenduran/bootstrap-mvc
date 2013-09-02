package com.sample.web.controller;

import org.springframework.ui.ModelMap;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.security.Principal;

@Controller
public class LoginController {

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String getLoginPage() {
        return "login";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String getLogoutPage(ModelMap modelMap) {
        modelMap.addAttribute("logoutSuccess", true);
        return "login";
    }

    @RequestMapping(value = "/loginfailed", method = RequestMethod.GET)
    public String getLoginFailedPage(ModelMap modelMap) {
        modelMap.addAttribute("error", true);
        return "login";
    }


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String printWelcome(ModelMap modelMap, Principal principal) {
        String name = principal.getName();
        modelMap.addAttribute("username", name);
        return "index";
    }

}
