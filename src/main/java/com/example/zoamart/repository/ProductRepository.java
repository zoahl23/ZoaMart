package com.example.zoamart.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.zoamart.domain.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    Product save(Product product);

    List<Product> findAll();

    @Query(value = "SELECT * FROM products ORDER BY created_at DESC LIMIT 4", nativeQuery = true)
    List<Product> findLatestProducts();

    @Query(value = "SELECT * FROM products ORDER BY sold DESC LIMIT 5", nativeQuery = true)
    List<Product> findSoldOutProducts();

    @Query(value = "SELECT * FROM products WHERE category_id IN " +
            "(SELECT id FROM categories WHERE parent_id = :parentId) " +
            "ORDER BY discount_percent DESC LIMIT 10", nativeQuery = true)
    List<Product> findTop10ProductsByParentCategory(@Param("parentId") Long parentId);

    @Query(value = "SELECT * FROM products WHERE id != :productId ORDER BY discount_percent DESC LIMIT 7", nativeQuery = true)
    List<Product> findProductsDiscountPrice(@Param("productId") Long productId);

    Optional<Product> findById(long id);

    void deleteById(long id);
}
