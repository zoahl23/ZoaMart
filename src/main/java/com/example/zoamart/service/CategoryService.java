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

}
