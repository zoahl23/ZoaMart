package com.example.zoamart.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.zoamart.service.ProductService;
import com.example.zoamart.service.UserService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class DashboardController {

    private final UserService userService;
    private final ProductService productService;

    @GetMapping("/admin")
    public String getDashboard(Model model) {
        model.addAttribute("revenue", this.productService.getRevenue());
        model.addAttribute("customers", this.userService.countU());
        model.addAttribute("products", this.productService.countP());
        model.addAttribute("orders", this.productService.countO());
        return "admin/dashboard/show"; // show.jsp
    }

}
