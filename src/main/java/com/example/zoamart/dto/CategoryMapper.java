package com.example.zoamart.dto;

import java.util.function.Function;

import org.springframework.stereotype.Service;

import com.example.zoamart.domain.Category;

@Service
public class CategoryMapper implements Function<CategoryDTO, Category> {

    @Override
    public Category apply(CategoryDTO categoryDto) {
        Category category = new Category();
        category.setId(categoryDto.getId());
        category.setName(categoryDto.getName());
        category.setCreatedAt(categoryDto.getCreatedAt());
        category.setUpdatedAt(categoryDto.getUpdatedAt());

        if (categoryDto.getParentId() != null) {
            Category parentCategory = new Category();
            parentCategory.setId(categoryDto.getParentId());
            category.setCategory(parentCategory);
        }

        return category;
    }

}
