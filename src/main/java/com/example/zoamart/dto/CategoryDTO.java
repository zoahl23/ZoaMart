package com.example.zoamart.dto;

import java.util.Date;

import lombok.Data;

@Data
public class CategoryDTO {
    private long id;
    private String name;
    private Date createdAt;
    private Date updatedAt;
    private Long parentId;
}
