package com.example.zoamart.dto;

import java.util.Date;
import java.util.List;

public record CategoryDTO(
        long id,
        String name,
        Date createdAt,
        Date updatedAt,
        Long parentId,
        List<CategoryDTO> categories) {

}
