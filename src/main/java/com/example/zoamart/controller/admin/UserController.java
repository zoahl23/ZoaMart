package com.example.zoamart.controller.admin;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
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

    @RequestMapping("/admin/user") // GET
    public String getUserPage(Model model) {
        List<User> users = this.userService.getAllUsers();
        model.addAttribute("users", users);
        return "admin/user/show";
    }

    @RequestMapping("/admin/user/{id}") // GET
    public String getUserDetailPage(Model model, @PathVariable long id) {
        User user = this.userService.getUserById(id);
        model.addAttribute("user", user);
        return "admin/user/detail";
    }

    @RequestMapping("/admin/user/create") // GET
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @RequestMapping("/admin/user/update/{id}") // GET
    public String getUpdateUserPage(Model model, @PathVariable long id) {
        User user = this.userService.getUserById(id);
        model.addAttribute("newUser", user);
        return "admin/user/update";
    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String createUserPage(Model model, @ModelAttribute("newUser") User u) {
        LocalDateTime ldt = LocalDateTime.now();
        u.setCreatedAt(ldt);
        this.userService.handleSaveUser(u);
        return "redirect:/admin/user";
    }

    @PostMapping(value = "/admin/user/update")
    public String updateUserPage(Model model, @ModelAttribute("newUser") User u) {
        User user = this.userService.getUserById(u.getId());
        LocalDateTime ldt = LocalDateTime.now();
        if (user != null) {
            user.setFullName(u.getFullName());
            user.setPhone(u.getPhone());
            user.setAddress(u.getAddress());
            user.setUpdatedAt(ldt);
            this.userService.handleSaveUser(user);
        }
        return "redirect:/admin/user";
    }

}
