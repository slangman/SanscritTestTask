package com.hustleind.controllers;

import com.hustleind.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/signup")
public class SignupController {
    private String signupPage = "signup";
    private UserService userService;

    @Autowired
    public SignupController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String pageHandler() {
        return signupPage;
    }

    @RequestMapping(method = RequestMethod.POST)
    public String registrationFormHandler (@RequestBody MultiValueMap<String, String> incParam, Model model) {
        userService.addUserByParams(incParam);
        return "redirect:/login?signup=true";
    }

}
