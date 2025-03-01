package com.example.zoamart.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.zoamart.domain.Category;
import com.example.zoamart.service.CategoryService;

@Controller
public class CategoryController {

    private final CategoryService categoryService;

    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @GetMapping("/admin/category")
    public String getDashboard(Model model) {
        List<Category> categories = this.categoryService.getAllCategories();
        model.addAttribute("categories", categories);
        return "admin/category/show"; // show.jsp
    }

}
