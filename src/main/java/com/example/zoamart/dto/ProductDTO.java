package com.example.zoamart.dto;

import java.util.Date;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class ProductDTO {
    private long id;

    @NotNull
    @NotEmpty(message = "Product Name cannot be empty")
    private String name;

    @Min(value = 0, message = "Price must be greater than or equal to 0")
    private int price;

    @Min(value = 0, message = "Discount percent must be at least 0")
    @Max(value = 100, message = "Discount percent cannot exceed 100")
    private int discountPercent;

    @NotNull
    @NotEmpty(message = "Description Detail cannot be empty")
    private String desDetail;

    @NotNull
    @NotEmpty(message = "Description Short cannot be empty")
    private String desShort;

    @Min(value = 0, message = "Quantity must be at least 0")
    private int quantity;

    @Min(value = 0, message = "Sold must be at least 0")
    private int sold;
    private String imageUrl;
    private Date createdAt;
    private Date updatedAt;

    private Long categoryId;
    private String categoryName;
}
