package com.example.zoamart.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import com.example.zoamart.controller.admin.CategoryController;
import com.example.zoamart.domain.Product;
import com.example.zoamart.repository.ProductRepository;

@Service
public class ProductService {

    private final CategoryController categoryController;
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository, CategoryController categoryController) {
        this.productRepository = productRepository;
        this.categoryController = categoryController;
    }

    public Product handleSaveProduct(Product product) {
        return this.productRepository.save(product);
    }

    public List<Product> getAllProducts() {
        return this.productRepository.findAll();
    }

    public Optional<Product> getAProductById(long id) {
        return this.productRepository.findById(id);
    }

    public void deleteAProduct(long id) {
        this.productRepository.deleteById(id);
    }

}
