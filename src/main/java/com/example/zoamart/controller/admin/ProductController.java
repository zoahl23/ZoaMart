package com.example.zoamart.controller.admin;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.zoamart.domain.Category;
import com.example.zoamart.domain.Product;
import com.example.zoamart.service.CategoryService;
import com.example.zoamart.service.ProductService;
import com.example.zoamart.service.UploadService;

import jakarta.servlet.ServletContext;

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
    public String createProductPage(Model model, @ModelAttribute("newProduct") Product p,
            @RequestParam("proImg") MultipartFile file) {

        Date date = new Date();
        p.setCreatedAt(date);
        p.setUpdatedAt(date);

        String imgName = this.uploadService.handleSaveUploadFile(file, "products");

        p.setImageUrl(imgName);
        this.productService.handleSaveProduct(p);
        return "redirect:/admin/product";
    }

}
