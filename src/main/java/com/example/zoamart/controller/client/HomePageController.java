package com.example.zoamart.controller.client;

import java.util.Date;
import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.example.zoamart.domain.Role;
import com.example.zoamart.dto.CategoryDTO;
import com.example.zoamart.dto.ProductDTO;
import com.example.zoamart.dto.UserDTO;
import com.example.zoamart.service.CategoryService;
import com.example.zoamart.service.ProductService;
import com.example.zoamart.service.UserService;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class HomePageController {

    private final UserService userService;
    private final ProductService productService;
    private final CategoryService categoryService;
    private final PasswordEncoder passwordEncoder;

    @GetMapping("/")
    public String getHomePage(Model model) {
        List<CategoryDTO> cateParent = categoryService.getAllCategoriesIsNull();
        List<CategoryDTO> categories = categoryService.getAllCategoriesIsNotNull();
        model.addAttribute("cateParents", cateParent);
        model.addAttribute("cateChildren", categories);
        List<ProductDTO> productsLatest = productService.getLatestProducts();
        model.addAttribute("productsLatest", productsLatest);
        List<ProductDTO> productsSoldOut = productService.getSoldOutProducts();
        model.addAttribute("productsSoldOut", productsSoldOut);

        List<ProductDTO> products1 = productService.getTop10ProductsByParentCategory(1L); // L là để định dạng kiểu
                                                                                          // Long
        model.addAttribute("products1", products1);
        List<ProductDTO> products2 = productService.getTop10ProductsByParentCategory(2L);
        model.addAttribute("products2", products2);
        List<ProductDTO> products3 = productService.getTop10ProductsByParentCategory(3L);
        model.addAttribute("products3", products3);
        List<ProductDTO> products4 = productService.getTop10ProductsByParentCategory(4L);
        model.addAttribute("products4", products4);
        return "client/home/show";
    }

    @GetMapping("/register")
    public String getRegisterPage(Model model) {
        model.addAttribute("registerUser", new UserDTO());
        return "client/auth/register";
    }

    @PostMapping("/register")
    public String registerPage(@ModelAttribute("registerUser") @Valid UserDTO u, BindingResult newUserBindingResult) {
        // validate start

        List<FieldError> errors = newUserBindingResult.getFieldErrors();
        for (FieldError error : errors) {
            System.out.println(">>>>" + error.getField() + " - " + error.getDefaultMessage());
        }

        if (newUserBindingResult.hasErrors()) {
            return "client/auth/register";
        }

        if (this.userService.checkEmailExists(u.getEmail())) {
            newUserBindingResult.rejectValue("email", "error.user", "Email đã tồn tại");
            return "client/auth/register";
        }

        // validate end

        // role
        u.setRoleName("USER");
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
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String getLoginPage(Model model) {
        return "client/auth/login";
    }

    @GetMapping("/access-deny")
    public String getDenyPage(Model model) {
        return "client/auth/error";
    }
}
