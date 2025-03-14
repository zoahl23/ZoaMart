package com.example.zoamart.dto;

import java.util.Date;
import java.util.List;

import com.example.zoamart.domain.Review;

public record ProductDTO(
        long id,
        String name,
        double price,
        double discountPercent,
        String desDetail,
        String desShort,
        int quantity,
        int sold,
        String imageUrl,
        Date createdAt,
        Date updatedAt,
        // Category category,
        List<Review> reviews) {

}
