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

import com.example.zoamart.domain.Product;
import com.example.zoamart.dto.CategoryDTO;
import com.example.zoamart.dto.ProductDTO;
import com.example.zoamart.service.CategoryService;
import com.example.zoamart.service.ProductService;
import com.example.zoamart.service.UploadService;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ProductController {

    private final ProductService productService;
    private final CategoryService categoryService;
    private final UploadService uploadService;

    @GetMapping("/admin/product")
    public String getProduct(Model model) {
        List<ProductDTO> products = this.productService.getAllProducts();
        model.addAttribute("products", products);
        return "admin/product/show"; // show.jsp
    }

    @GetMapping("/admin/product/create")
    public String getCreateProductPage(Model model) {
        model.addAttribute("newProduct", new ProductDTO());
        List<CategoryDTO> categories = this.categoryService.getAllCategoriesIsNotNull();
        model.addAttribute("cateIsNotNull", categories);
        return "admin/product/create";
    }

    @PostMapping("/admin/product/create")
    public String createProductPage(Model model, @ModelAttribute("newProduct") @Valid ProductDTO p,
            BindingResult newProductBindingResult,
            @RequestParam("proImg") MultipartFile file) {

        // validate start

        List<FieldError> errors = newProductBindingResult.getFieldErrors();
        for (FieldError error : errors) {
            System.out.println(">>>>" + error.getField() + " - " + error.getDefaultMessage());
        }

        if (newProductBindingResult.hasErrors()) {
            List<CategoryDTO> categories = this.categoryService.getAllCategoriesIsNotNull();
            model.addAttribute("cateIsNotNull", categories);
            return "admin/product/create";
        }

        // validate end

        Date date = new Date();
        p.setCreatedAt(date);
        p.setUpdatedAt(date);

        String imgName = this.uploadService.handleSaveUploadFile(file, "products");

        p.setImageUrl(imgName);
        CategoryDTO category = this.categoryService.getCategoryById(p.getCategoryId());
        p.setCategoryName(category.getName());
        this.productService.handleSaveProduct(p);
        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/{id}")
    public String getDetailProductPage(Model model, @PathVariable long id) {
        ProductDTO product = this.productService.getAProductById(id);
        model.addAttribute("product", product);
        return "admin/product/detail";
    }

    @GetMapping("/admin/product/delete/{id}") // GET
    public String getDeleteProductPage(Model model, @PathVariable long id) {
        model.addAttribute("newProduct", new Product());
        return "admin/product/delete";
    }

    @PostMapping("/admin/product/delete")
    public String deleteProductPage(Model model, @ModelAttribute("newProduct") Product product) {
        ProductDTO p = productService.getAProductById(product.getId());
        this.uploadService.deleteFile(p.getImageUrl(), "products");
        this.productService.deleteAProduct(p.getId());
        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/update/{id}") // GET
    public String getUpdateProductPage(Model model, @PathVariable long id) {
        ProductDTO product = this.productService.getAProductById(id);
        model.addAttribute("newProduct", product);
        List<CategoryDTO> cates = this.categoryService.getAllCategoriesIsNotNull();
        model.addAttribute("cateIsNotNull", cates);
        return "admin/product/update";
    }

    @PostMapping("/admin/product/update")
    public String updateProductPage(Model model, @ModelAttribute("newProduct") @Valid ProductDTO p,
            BindingResult newProductBindingResult,
            @RequestParam("proImg") MultipartFile file) {

        // validate start

        List<FieldError> errors = newProductBindingResult.getFieldErrors();
        for (FieldError error : errors) {
            System.out.println(">>>>" + error.getField() + " - " + error.getDefaultMessage());
        }

        if (newProductBindingResult.hasErrors()) {
            List<CategoryDTO> categories = this.categoryService.getAllCategoriesIsNotNull();
            model.addAttribute("cateIsNotNull", categories);
            return "admin/product/update";
        }

        // validate end

        ProductDTO product = this.productService.getAProductById(p.getId());
        Date date = new Date();
        if (product != null) {
            product.setName(p.getName());
            product.setPrice(p.getPrice());
            product.setDiscountPercent(p.getDiscountPercent());
            product.setDesDetail(p.getDesDetail());
            product.setDesShort(p.getDesShort());
            product.setQuantity(p.getQuantity());
            product.setSold(p.getSold());
            product.setUpdatedAt(date);

            product.setCategoryId(p.getCategoryId());
            CategoryDTO category = this.categoryService.getCategoryById(p.getCategoryId());
            product.setCategoryName(category.getName());

            String imgName = this.uploadService.handleSaveUploadFile(file, "products");
            if (p.getImageUrl() != null || imgName != "") {
                this.uploadService.deleteFile(product.getImageUrl(), "products");
                product.setImageUrl(imgName);
            }

            this.productService.handleSaveProduct(product);
        }
        return "redirect:/admin/product";
    }

}
