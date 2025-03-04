package com.example.zoamart.controller.admin;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.zoamart.domain.Category;
import com.example.zoamart.domain.User;
import com.example.zoamart.service.CategoryService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

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

    @GetMapping("/admin/category/create")
    public String getCreateCategoryPage(Model model) {
        model.addAttribute("newCategory", new Category());
        List<Category> categories = this.categoryService.getAllCategoriesIsNull();
        model.addAttribute("categories", categories);
        return "admin/category/create";
    }

    @PostMapping("/admin/category/create")
    public String createCategoryPage(Model model, @ModelAttribute("newCategory") Category c) {
        Date date = new Date();
        c.setCreatedAt(date);
        c.setUpdatedAt(date);
        this.categoryService.handleSaveCategory(c);
        return "redirect:/admin/category";
    }

    @GetMapping("/admin/category/{id}")
    public String getDetailCategoryPage(Model model, @PathVariable long id) {
        Category category = this.categoryService.getCategoryById(id);
        model.addAttribute("category", category);
        return "/admin/category/detail";
    }

    @GetMapping("/admin/category/update/{id}")
    public String getUpdateCategoryPage(Model model, @PathVariable long id) {
        Category category = this.categoryService.getCategoryById(id);
        model.addAttribute("updateCategory", category);
        List<Category> categories = this.categoryService.getAllCategoriesIsNull();
        model.addAttribute("categoriesIsNull", categories);
        return "admin/category/update";
    }

    @GetMapping("/admin/category/delete/{id}") // GET
    public String getDeleteCatePage(Model model, @PathVariable long id) {
        model.addAttribute("newCategory", new Category());
        return "admin/category/delete";
    }

    @PostMapping("/admin/category/delete")
    public String deleteCatePage(Model model, @ModelAttribute("newCategory") Category cate) {
        this.categoryService.deleteCategoryById(cate.getId());
        return "redirect:/admin/category";
    }

}
