package com.example.zoamart.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import com.example.zoamart.domain.Product;
import com.example.zoamart.dto.ProductDTO;
import com.example.zoamart.mapper.ProductMapper;
import com.example.zoamart.repository.ProductRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;

    public ProductDTO handleSaveProduct(ProductDTO productDTO) {
        Product product = ProductMapper.PRODUCT_INSTANCE.toEntity(productDTO);
        Product savedProduct = productRepository.save(product);
        return ProductMapper.PRODUCT_INSTANCE.toDTO(savedProduct);
    }

    public List<ProductDTO> getAllProducts() {
        List<Product> products = productRepository.findAll();
        return products.stream()
                .map(ProductMapper.PRODUCT_INSTANCE::toDTO)
                .collect(Collectors.toList());
    }

    public ProductDTO getAProductById(Long id) {
        Product product = productRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Product not found"));
        return ProductMapper.PRODUCT_INSTANCE.toDTO(product);
    }

    public void deleteAProduct(long id) {
        this.productRepository.deleteById(id);
    }

}
