package com.example.zoamart.controller.admin;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.zoamart.domain.Category;
import com.example.zoamart.domain.Product;
import com.example.zoamart.service.CategoryService;
import com.example.zoamart.service.ProductService;
import com.example.zoamart.service.UploadService;

import jakarta.validation.Valid;

@Controller
public class ProductController {

    private final ProductService productService;
    private final CategoryService categoryService;
    private final UploadService uploadService;

    public ProductController(ProductService productService, CategoryService categoryService,
            UploadService uploadService) {
        this.productService = productService;
        this.categoryService = categoryService;
        this.uploadService = uploadService;
    }

    @GetMapping("/admin/product")
    public String getProduct(Model model) {
        List<Product> products = this.productService.getAllProducts();
        model.addAttribute("products", products);
        return "admin/product/show"; // show.jsp
    }

    @GetMapping("/admin/product/create")
    public String getCreateProductPage(Model model) {
        model.addAttribute("newProduct", new Product());
        List<Category> categories = this.categoryService.getAllCategoriesIsNotNull();
        model.addAttribute("cateIsNotNull", categories);
        return "admin/product/create";
    }

    @PostMapping("/admin/product/create")
    public String createProductPage(Model model, @ModelAttribute("newProduct") @Valid Product p,
            BindingResult newProductBindingResult,
            @RequestParam("proImg") MultipartFile file) {

        // validate start

        List<FieldError> errors = newProductBindingResult.getFieldErrors();
        for (FieldError error : errors) {
            System.out.println(">>>>" + error.getField() + " - " + error.getDefaultMessage());
        }

        if (newProductBindingResult.hasErrors()) {
            return "admin/product/create";
        }

        // validate end

        Date date = new Date();
        p.setCreatedAt(date);
        p.setUpdatedAt(date);

        String imgName = this.uploadService.handleSaveUploadFile(file, "products");

        p.setImageUrl(imgName);
        this.productService.handleSaveProduct(p);
        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/{id}")
    public String getDetailProductPage(Model model, @PathVariable long id) {
        Product product = this.productService.getAProductById(id);
        model.addAttribute("product", product);
        return "/admin/product/detail";
    }

}
