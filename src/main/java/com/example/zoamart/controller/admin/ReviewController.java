package com.example.zoamart.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ReviewController {

    @GetMapping("/admin/review")
    public String getDashboard() {
        return "admin/review/show"; // show.jsp
    }

}
