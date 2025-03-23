package com.example.zoamart.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;

import com.example.zoamart.domain.Category;
import com.example.zoamart.dto.CategoryDTO;

@Mapper
public interface CategoryMapper {

    CategoryMapper CATEGORY_INSTANCE = Mappers.getMapper(CategoryMapper.class);

    @Mapping(source = "category.id", target = "parentId")
    @Mapping(source = "category.name", target = "parentName")
    CategoryDTO toDTO(Category category);

    @Mapping(source = "parentId", target = "category")
    @Mapping(target = "products", ignore = true) // Bỏ qua mapping products
    @Mapping(target = "categories", ignore = true)
    Category toEntity(CategoryDTO categoryDTO);

    // Chuyển Long thành Category
    default Category map(Long parentId) {
        if (parentId == null) {
            return null;
        }
        Category category = new Category();
        category.setId(parentId);
        return category;
    }
}
