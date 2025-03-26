package com.example.zoamart.service.specification;

import org.springframework.data.jpa.domain.Specification;

import com.example.zoamart.domain.Product;
import com.example.zoamart.domain.Product_;

public class ProductSpecs {

    public static Specification<Product> filterByCategory(Long categoryId) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.equal(root.get(Product_.CATEGORY).get("id"),
                categoryId);
    }

    public static Specification<Product> nameLike(String name) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.like(root.get(Product_.NAME), "%" + name + "%");
    }

    public static Specification<Product> matchPrice(int min, int max) {
        return (root, query, criteriaBuilder) -> {
            if (min > 0 && max > 0) {
                return criteriaBuilder.and(
                        criteriaBuilder.ge(root.get(Product_.PRICE), min),
                        criteriaBuilder.le(root.get(Product_.PRICE), max));
            } else if (min > 0) {
                return criteriaBuilder.ge(root.get(Product_.PRICE), min);
            } else if (max > 0) {
                return criteriaBuilder.le(root.get(Product_.PRICE), max);
            }
            return criteriaBuilder.conjunction(); // Không filter gì nếu min và max = 0
        };
    }

}
