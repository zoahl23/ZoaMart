package com.example.zoamart.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.example.zoamart.domain.Category;
import com.example.zoamart.dto.CategoryDTO;
import com.example.zoamart.mapper.CategoryMapper;
import com.example.zoamart.repository.CategoryRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CategoryService {
    private final CategoryRepository categoryRepository;

    public List<CategoryDTO> getAllCategories() {
        List<Category> categories = categoryRepository.findAll();
        return categories.stream()
                .map(CategoryMapper.CATEGORY_INSTANCE::toDTO)
                .collect(Collectors.toList());
    }

    public List<CategoryDTO> getAllCategoriesIsNull() {
        List<Category> categories = categoryRepository.findAllByCategoryIsNull();
        return categories.stream()
                .map(CategoryMapper.CATEGORY_INSTANCE::toDTO)
                .collect(Collectors.toList());
    }

    public List<CategoryDTO> getAllCategoriesIsNotNull() {
        List<Category> categories = categoryRepository.findAllByCategoryIsNotNull();
        return categories.stream()
                .map(CategoryMapper.CATEGORY_INSTANCE::toDTO)
                .collect(Collectors.toList());
    }

    public CategoryDTO handleSaveCategory(CategoryDTO categoryDTO) {
        Category category = CategoryMapper.CATEGORY_INSTANCE.toEntity(categoryDTO);
        Category savedCategory = categoryRepository.save(category);
        return CategoryMapper.CATEGORY_INSTANCE.toDTO(savedCategory);
    }

    public CategoryDTO getCategoryById(Long id) {
        Category category = categoryRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Category not found"));
        return CategoryMapper.CATEGORY_INSTANCE.toDTO(category);
    }

    public void deleteCategoryById(Long id) {
        this.categoryRepository.deleteById(id);
    }

}
