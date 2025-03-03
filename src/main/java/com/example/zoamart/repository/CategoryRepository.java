package com.example.zoamart.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.zoamart.domain.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {
    List<Category> findAll();

    List<Category> findAllByCategoryIsNull();

    Category save(Category category);

    Category findById(long id);
}
