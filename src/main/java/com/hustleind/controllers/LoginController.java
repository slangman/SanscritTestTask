package com.hustleind.controllers;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;


@Controller
public class LoginController {

    private static Logger logger = Logger.getLogger(LoginController.class);

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        logger.info("User logged in");
        return "loginPage";
    }

    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public String dashboard() {
        return "dashboard";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        if (session.getAttribute("entered_user_id") != null) {
            logger.info("User: [" + session.getAttribute("entered_user_id") + "] "
                    + session.getAttribute("entered_login") + " logged out");
            session.removeAttribute("entered_login");
            session.removeAttribute("entered_name");
            session.removeAttribute("entered_role");
            session.removeAttribute("entered_user_id");
        }
        return "redirect:/j_spring_security_logout";
    }
}
