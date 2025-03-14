package com.example.zoamart.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.zoamart.domain.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {
    List<Category> findAll();

    List<Category> findAllByCategoryIsNull();

    List<Category> findAllByCategoryIsNotNull();

    Category save(Category category);

    Optional<Category> findById(long id);

    void deleteById(long id);
}
