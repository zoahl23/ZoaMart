package com.example.zoamart.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.example.zoamart.domain.Category;
import com.example.zoamart.dto.CategoryDTO;
import com.example.zoamart.dto.CategoryDTOMapper;
import com.example.zoamart.repository.CategoryRepository;

@Service
public class CategoryService {
    private final CategoryRepository categoryRepository;
    private final CategoryDTOMapper categoryDTOMapper;

    public CategoryService(CategoryRepository categoryRepository, CategoryDTOMapper categoryDTOMapper) {
        this.categoryRepository = categoryRepository;
        this.categoryDTOMapper = categoryDTOMapper;
    }

    public List<CategoryDTO> getAllCategories() {
        return this.categoryRepository.findAll()
                .stream()
                .map(categoryDTOMapper)
                .collect(Collectors.toList());
    }

    public List<CategoryDTO> getAllCategoriesIsNull() {
        return this.categoryRepository.findAllByCategoryIsNull()
                .stream()
                .map(categoryDTOMapper)
                .collect(Collectors.toList());
    }

    public List<Category> getAllCategoriesIsNotNull() {
        return this.categoryRepository.findAllByCategoryIsNotNull();
    }

    public Category handleSaveCategory(Category category) {
        return this.categoryRepository.save(category);
    }

    public CategoryDTO getCategoryById(long id) {
        return this.categoryRepository.findById(id)
                .map(categoryDTOMapper)
                .orElseThrow(() -> new RuntimeException("Category not found with id: " + id));
    }

    public void deleteCategoryById(long id) {
        this.categoryRepository.deleteById(id);
    }

}
