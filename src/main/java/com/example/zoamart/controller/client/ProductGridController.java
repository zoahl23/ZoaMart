package com.example.zoamart.controller.client;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
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

        public static String normalizeVietnamese(String input) {
                if (input == null)
                        return "";

                // Bước 1: Trim khoảng trắng đầu/cuối
                input = input.trim();

                // Bước 2: Loại bỏ dấu tiếng Việt
                String normalized = java.text.Normalizer.normalize(input, java.text.Normalizer.Form.NFD);
                normalized = normalized.replaceAll("\\p{InCombiningDiacriticalMarks}+", "");

                // Bước 3: Chuyển về thường và thay khoảng trắng bằng _
                normalized = normalized.toLowerCase().replaceAll("\\s+", "_");

                return normalized;
        }

        @GetMapping("/products")
        public String getProductPage(Model model,
                        @RequestParam("category") Optional<String> categoryOptional,
                        @RequestParam("page") Optional<String> pageOptional,
                        @RequestParam("name") Optional<String> nameOptional,
                        @RequestParam("min") Optional<String> minOptional,
                        @RequestParam("max") Optional<String> maxOptional,
                        @RequestParam("sort") Optional<String> sortOptional) {

                List<CategoryDTO> cateParent = categoryService.getAllCategoriesIsNull();
                List<CategoryDTO> categories = categoryService.getAllCategoriesIsNotNull();

                Long categoryId = categoryOptional
                                .filter(s -> !s.isEmpty()) // Kiểm tra xem có dữ liệu không
                                .map(Long::parseLong) // Chuyển từ String -> Long
                                .orElse(null);
                int page = pageOptional
                                .filter(s -> !s.isEmpty())
                                .map(Integer::parseInt)
                                .orElse(1);
                String nameRaw = nameOptional.orElse("");
                String name = normalizeVietnamese(nameRaw);
                int minPrice = minOptional
                                .filter(s -> !s.isEmpty())
                                .map(Integer::parseInt)
                                .orElse(0);
                int maxPrice = maxOptional
                                .filter(s -> !s.isEmpty())
                                .map(Integer::parseInt)
                                .orElse(0);
                String sort = sortOptional
                                .orElse("discount");

                Sort sortConfig = Sort.unsorted();
                switch (sort) {
                        case "sold":
                                sortConfig = Sort.by(Sort.Direction.DESC, "sold");
                                break;
                        case "discount":
                                sortConfig = Sort.by(Sort.Direction.DESC, "discountPercent");
                                break;
                        case "new":
                                sortConfig = Sort.by(Sort.Direction.DESC, "createdAt");
                                break;
                }

                Pageable pageable = PageRequest.of(page - 1, 25, sortConfig);
                Page<Product> prs = this.productService.getFilteredProducts(pageable, name, minPrice, maxPrice,
                                categoryId);
                List<Product> products = prs.getContent();

                if (products.isEmpty()) {
                        Page<Product> prs2 = this.productService.getProductWithName(pageable, name, minPrice, maxPrice);
                        products = prs2.getContent();
                }

                model.addAttribute("cateParents", cateParent);
                model.addAttribute("cateChildren", categories);
                model.addAttribute("products", products);
                model.addAttribute("currentPage", page);
                model.addAttribute("totalPages", prs.getTotalPages());
                model.addAttribute("id", categoryId);
                model.addAttribute("min", minPrice);
                model.addAttribute("max", maxPrice);
                model.addAttribute("sort", sort);
                model.addAttribute("name", name);
                model.addAttribute("nameRaw", nameRaw);

                return "client/category/show";
        }

        @PostMapping("/add-product-category-to-cart/{id}")
        public String addProductCategoryToCart(@PathVariable long id,
                        @RequestParam(name = "quantity", defaultValue = "1") int quantity,
                        @RequestParam("currentPage") Optional<String> currentPage,
                        @RequestParam("categoryId") Optional<String> categoryOptional,
                        @RequestParam("min") Optional<String> minOptional,
                        @RequestParam("max") Optional<String> maxOptional,
                        @RequestParam("sort") Optional<String> sortOptional,
                        @RequestParam("name") Optional<String> nameOptional,
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

                Long categoryId = categoryOptional
                                .filter(s -> !s.isEmpty()) // Kiểm tra xem có dữ liệu không
                                .map(Long::parseLong) // Chuyển từ String -> Long
                                .orElse(null);
                int page = currentPage
                                .filter(s -> !s.isEmpty())
                                .map(Integer::parseInt)
                                .orElse(1);
                int minPrice = minOptional
                                .filter(s -> !s.isEmpty())
                                .map(Integer::parseInt)
                                .orElse(0);
                int maxPrice = maxOptional
                                .filter(s -> !s.isEmpty())
                                .map(Integer::parseInt)
                                .orElse(0);
                String sort = sortOptional
                                .orElse("discount");
                String nameRaw = nameOptional.orElse("");
                String name = normalizeVietnamese(nameRaw);

                return "redirect:/products?category=" + categoryId + "&page=" + page + "&min=" + minPrice + "&max="
                                + maxPrice + "&sort=" + sort + "&name=" + name;
        }

}
