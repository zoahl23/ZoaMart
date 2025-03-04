package com.example.zoamart.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.zoamart.domain.Category;
import com.example.zoamart.repository.CategoryRepository;

@Service
public class CategoryService {
    private final CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public List<Category> getAllCategories() {
        return this.categoryRepository.findAll();
    }

    public List<Category> getAllCategoriesIsNull() {
        return this.categoryRepository.findAllByCategoryIsNull();
    }

    public Category handleSaveCategory(Category category) {
        return this.categoryRepository.save(category);
    }

    public Category getCategoryById(long id) {
        return this.categoryRepository.findById(id);
    }

    public void deleteCategoryById(long id) {
        this.categoryRepository.deleteById(id);
    }

}
