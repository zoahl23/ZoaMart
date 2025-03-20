package com.example.zoamart.controller.client;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.zoamart.dto.ProductDTO;
import com.example.zoamart.service.ProductService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ItemController {

    private final ProductService productService;

    @GetMapping("/product/{id}")
    public String getProductPage(Model model, @PathVariable long id) {
        ProductDTO product = this.productService.getAProductById(id);
        model.addAttribute("product", product);

        List<ProductDTO> products = this.productService
                .getProductForDetail(Long.valueOf(id));
        model.addAttribute("products", products);
        return "client/product/detail";
    }
}
