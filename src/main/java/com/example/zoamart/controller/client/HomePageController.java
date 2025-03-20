package com.example.zoamart.controller.client;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.example.zoamart.dto.CategoryDTO;
import com.example.zoamart.dto.ProductDTO;
import com.example.zoamart.dto.UserDTO;
import com.example.zoamart.service.CategoryService;
import com.example.zoamart.service.ProductService;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class HomePageController {

    private final ProductService productService;
    private final CategoryService categoryService;

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
    public String registerPage(@ModelAttribute("registerUser") UserDTO u) {
        // TODO: process POST request

        return "client/auth/register";
    }

    @GetMapping("/login")
    public String getLoginPage(Model model) {
        return "client/auth/login";
    }
}
