package com.example.zoamart.dto;

import java.util.Date;
import java.util.List;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;

public class CategoryDTO {
    private long id;

    @NotNull
    @NotEmpty(message = "Category Name cannot be empty")
    private String name;
    private Date createdAt;
    private Date updatedAt;
    private Long parentId;
    private List<CategoryDTO> categories;

    public CategoryDTO() {

    }

    public CategoryDTO(long id, String name, Date createdAt, Date updatedAt, Long parentId,
            List<CategoryDTO> categories) {
        this.id = id;
        this.name = name;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.parentId = parentId;
        this.categories = categories;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public Long getParentId() {
        return parentId;
    }

    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    public List<CategoryDTO> getCategories() {
        return categories;
    }

    public void setCategories(List<CategoryDTO> categories) {
        this.categories = categories;
    }

    @Override
    public String toString() {
        return "CategoryDTO [id=" + id + ", name=" + name + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt
                + ", parentId=" + parentId + ", categories=" + categories + "]";
    }

}
