package com.example.zoamart.controller.client;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.zoamart.dto.CategoryDTO;
import com.example.zoamart.service.CategoryService;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ProductGridController {

    private final CategoryService categoryService;

    @GetMapping("/category/{id}")
    public String getProductPage(Model model, @PathVariable long id) {
        List<CategoryDTO> cateParent = categoryService.getAllCategoriesIsNull();
        List<CategoryDTO> categories = categoryService.getAllCategoriesIsNotNull();
        model.addAttribute("cateParents", cateParent);
        model.addAttribute("cateChildren", categories);

        return "client/category/show";
    }

}
