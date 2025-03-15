package com.example.zoamart.domain;

import java.util.Date;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Entity
@Data
@Table(name = "categories")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotNull
    @NotEmpty(message = "Category Name cannot be empty")
    private String name;
    private Date createdAt;
    private Date updatedAt;

    @ManyToOne
    @JoinColumn(name = "parent_id")
    private Category category;

    @OneToMany(mappedBy = "category")
    private List<Category> categories;

    @OneToMany(mappedBy = "category")
    private List<Product> products;

}
