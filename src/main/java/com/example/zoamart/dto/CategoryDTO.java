package com.example.zoamart.dto;

import java.util.Date;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class CategoryDTO {
    private long id;

    @NotNull
    @NotEmpty(message = "Tên danh mục không được để trống")
    private String name;
    private Date createdAt;
    private Date updatedAt;
    private Long parentId;
}
