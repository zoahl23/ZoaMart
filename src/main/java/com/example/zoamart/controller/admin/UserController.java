package com.example.zoamart.controller.admin;

import java.util.Date;
import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.zoamart.domain.Role;
import com.example.zoamart.domain.User;
import com.example.zoamart.dto.UserDTO;
import com.example.zoamart.service.UserService;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;
    private final PasswordEncoder passwordEncoder;

    @GetMapping("/admin/user") // GET
    public String getUserPage(Model model) {
        List<UserDTO> users = this.userService.getAllUsers();
        model.addAttribute("users", users);
        return "admin/user/show";
    }

    @GetMapping("/admin/user/{id}") // GET
    public String getUserDetailPage(Model model, @PathVariable long id) {
        UserDTO user = this.userService.getUserById(id);
        model.addAttribute("user", user);
        return "admin/user/detail";
    }

    @GetMapping("/admin/user/create") // GET
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new UserDTO());
        return "admin/user/create";
    }

    @GetMapping("/admin/user/update/{id}") // GET
    public String getUpdateUserPage(Model model, @PathVariable long id) {
        UserDTO user = this.userService.getUserById(id);
        model.addAttribute("newUser", user);
        return "admin/user/update";
    }

    @PostMapping(value = "/admin/user/create")
    public String createUserPage(Model model,
            @ModelAttribute("newUser") @Valid UserDTO u,
            BindingResult newUserBindingResult) {

        // validate start

        List<FieldError> errors = newUserBindingResult.getFieldErrors();
        for (FieldError error : errors) {
            System.out.println(">>>>" + error.getField() + " - " + error.getDefaultMessage());
        }

        if (newUserBindingResult.hasErrors()) {
            return "admin/user/create";
        }

        // validate end

        // role
        u.setRoleName(u.getRoleName());
        Role role = this.userService.getRoleByName(u.getRoleName());
        u.setRoleId(role.getId());
        // password
        String hashPassword = this.passwordEncoder.encode(u.getPassword());
        u.setPassword(hashPassword);
        // datetime
        Date ldt = new Date(); // date time now
        u.setCreatedAt(ldt);
        u.setUpdatedAt(ldt);
        this.userService.handleSaveUser(u);
        return "redirect:/admin/user";
    }

    @PostMapping(value = "/admin/user/update")
    public String updateUserPage(Model model,
            @ModelAttribute("newUser") @Valid UserDTO u,
            BindingResult newUserBindingResult) {

        // validate start

        List<FieldError> errors = newUserBindingResult.getFieldErrors();
        for (FieldError error : errors) {
            System.out.println(">>>>" + error.getField() + " - " + error.getDefaultMessage());
        }

        if (newUserBindingResult.hasErrors()) {
            return "admin/user/update";
        }

        // validate end

        UserDTO user = this.userService.getUserById(u.getId());
        Date ldt = new Date();
        if (user != null) {
            user.setFullName(u.getFullName());
            user.setPhone(u.getPhone());
            user.setAddress(u.getAddress());
            user.setUpdatedAt(ldt);
            user.setRoleName(u.getRoleName());
            Role role = this.userService.getRoleByName(u.getRoleName());
            user.setRoleId(role.getId());
            this.userService.handleSaveUser(user);
        }
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/delete/{id}") // GET
    public String getDeleteUserPage(Model model, @PathVariable long id) {
        model.addAttribute("newUser", new User());
        return "admin/user/delete";
    }

    @PostMapping("/admin/user/delete")
    public String deleteUserPage(Model model, @ModelAttribute("newUser") User user) {
        this.userService.deleteAUser(user.getId());
        return "redirect:/admin/user";
    }

}
