package com.example.zoamart.controller.client;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.zoamart.domain.Product;
import com.example.zoamart.dto.CategoryDTO;
import com.example.zoamart.dto.ProductDTO;
import com.example.zoamart.service.CategoryService;
import com.example.zoamart.service.ProductService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ProductGridController {

    private final CategoryService categoryService;
    private final ProductService productService;

    @GetMapping("/category/{id}")
    public String getProductPage(Model model,
            @PathVariable long id,
            @RequestParam("page") Optional<String> pageOptional) {
        List<CategoryDTO> cateParent = categoryService.getAllCategoriesIsNull();
        List<CategoryDTO> categories = categoryService.getAllCategoriesIsNotNull();
        model.addAttribute("cateParents", cateParent);
        model.addAttribute("id", id);
        model.addAttribute("cateChildren", categories);

        CategoryDTO c = this.categoryService.getCategoryById(id);
        model.addAttribute("category", c);

        int page = 1;
        try {
            if (pageOptional.isPresent()) {
                page = Integer.parseInt(pageOptional.get());
            }
        } catch (Exception e) {

        }
        Pageable pageable = PageRequest.of(page - 1, 25); // page, size
        Page<Product> prs = this.productService.getAllProductsWithPage(pageable);
        List<Product> products = prs.getContent();

        model.addAttribute("products", products);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", prs.getTotalPages());

        return "client/category/show";
    }

    @PostMapping("/add-product-category-to-cart/{id}")
    public String addProductCategoryToCart(@PathVariable long id,
            @RequestParam(name = "quantity", defaultValue = "1") int quantity,
            @RequestParam("currentPage") Optional<String> currentPage,
            @RequestParam("categoryId") long categoryId,
            HttpServletRequest request) {

        HttpSession session = request.getSession(false);
        String email = (String) session.getAttribute("email");

        long productId = id;
        ProductDTO product = this.productService.getAProductById(id);

        if (product.getQuantity() < quantity) {
            this.productService.handleAddProductToCart(email, productId, 1, session);
            return "client/auth/empty";
        }

        this.productService.handleAddProductToCart(email, productId, quantity, session);

        int page = 1;
        try {
            if (currentPage.isPresent()) {
                page = Integer.parseInt(currentPage.get());
            }
        } catch (Exception e) {

        }
        return "redirect:/category/" + categoryId + "?page=" + page;
    }

}
