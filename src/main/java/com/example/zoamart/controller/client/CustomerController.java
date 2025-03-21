package com.example.zoamart.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class CustomerController {

    @GetMapping("/customer")
    public String getAccountPage(Model model) {
        return "client/customer/show";
    }
}
