package com.hustleind.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class LoginController {

    @RequestMapping(value="/login", method= RequestMethod.GET)
    public String login() {
        return "loginPage";
    }

    @RequestMapping(value="/dashboard", method=RequestMethod.GET)
    public String dashboard() {
        return "dashboard";
    }
}
