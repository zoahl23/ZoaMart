package com.example.zoamart.dto;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.example.zoamart.domain.Category;

@Service
public class CategoryDTOMapper implements Function<Category, CategoryDTO> {

    @Override
    public CategoryDTO apply(Category category) {
        // danh sách các danh mục con
        List<CategoryDTO> subCategories = category.getCategories() != null ? category.getCategories()
                .stream()
                .map(subCategory -> new CategoryDTO(
                        subCategory.getId(),
                        subCategory.getName(),
                        subCategory.getCreatedAt(),
                        subCategory.getUpdatedAt(),
                        subCategory.getCategory() != null ? subCategory.getCategory().getId() : null,
                        new ArrayList<>() // Không có danh mục con trong danh mục con
                ))
                .collect(Collectors.toList()) : new ArrayList<>();

        return new CategoryDTO(
                category.getId(),
                category.getName(),
                category.getCreatedAt(),
                category.getUpdatedAt(),
                category.getCategory() != null ? category.getCategory().getId() : null,
                subCategories);
    }

}
