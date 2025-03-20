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
    @NotEmpty(message = "Tên sản phẩm không được để trống")
    private String name;

    @Min(value = 0, message = "Giá sản phẩm phải lớn hơn hoặc bằng 0")
    private int price;

    @Min(value = 0, message = "Phần trăm giảm giá thấp nhất là 0")
    @Max(value = 100, message = "Phần trăm giảm giá cao nhất là 100")
    private int discountPercent;

    @NotNull
    @NotEmpty(message = "Mô tả chi tiết không được để trống")
    private String desDetail;

    @NotNull
    @NotEmpty(message = "Mô tả ngắn gọn không được để trống")
    private String desShort;

    @Min(value = 0, message = "Số lượng kho thấp nhất là 0")
    private int quantity;

    @Min(value = 0, message = "Số lượng bán thấp nhất là 0")
    private int sold;
    private String imageUrl;
    private Date createdAt;
    private Date updatedAt;

    private Long categoryId;
    private String categoryName;
}
