package com.example.zoamart.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.zoamart.domain.User;
import com.example.zoamart.service.UserService;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        List<User> arrList = this.userService.getAllUsers();
        System.out.println(arrList);
        List<User> arrEmail = this.userService.getAllUsersByEmail("1@gmail.com");
        System.out.println(arrEmail);

        model.addAttribute("nameKey", "gia tri");
        return "index";
    }

    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @RequestMapping(value = "/admin/user/create1", method = RequestMethod.POST)
    public String createUserPage(Model model, @ModelAttribute("newUser") User u) {
        System.out.println("helo" + u);
        this.userService.handleSaveUser(u);
        return "index";
    }

}
