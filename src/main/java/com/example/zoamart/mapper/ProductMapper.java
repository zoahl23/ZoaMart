package com.example.zoamart.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;

import com.example.zoamart.domain.Category;
import com.example.zoamart.domain.Product;
import com.example.zoamart.dto.ProductDTO;

@Mapper
public interface ProductMapper {
    ProductMapper PRODUCT_INSTANCE = Mappers.getMapper(ProductMapper.class);

    @Mapping(source = "category.id", target = "categoryId")
    @Mapping(source = "category.name", target = "categoryName")
    ProductDTO toDTO(Product product);

    @Mapping(source = "categoryId", target = "category.id")
    @Mapping(source = "categoryName", target = "category.name")
    @Mapping(target = "orderDetails", ignore = true)
    @Mapping(target = "reviews", ignore = true)
    Product toEntity(ProductDTO productDTO);

    default Category map(Long categoryId, String categoryName) {
        Category category = new Category();
        category.setId(categoryId);
        category.setName(categoryName);
        return category;
    }
}
