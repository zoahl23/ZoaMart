package com.example.zoamart.dto;

import java.util.Date;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class CategoryDTO {
    private long id;

    @NotNull
    @NotEmpty(message = "Category Name cannot be empty")
    private String name;
    private Date createdAt;
    private Date updatedAt;
    private Long parentId;
}
