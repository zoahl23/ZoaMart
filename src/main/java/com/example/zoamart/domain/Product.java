package com.example.zoamart.domain;

import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Lob;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Entity
@Data
@Table(name = "products")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotNull
    @NotEmpty(message = "Product Name cannot be empty")
    private String name;

    @NotNull
    @Min(value = 0, message = "Price must be greater than or equal to 0")
    private int price;

    @NotNull
    @Min(value = 0, message = "Discount percent must be at least 0")
    @Max(value = 100, message = "Discount percent cannot exceed 100")
    private int discountPercent;

    @NotNull
    @NotEmpty(message = "Description Detail cannot be empty")
    @Lob
    @Column(columnDefinition = "TEXT")
    private String desDetail;

    @NotNull
    @NotEmpty(message = "Description Short cannot be empty")
    private String desShort;

    @NotNull
    @Min(value = 0, message = "Quantity must be at least 0")
    private int quantity;

    @NotNull
    @Min(value = 0, message = "Sold must be at least 0")
    private int sold;
    private String imageUrl;
    private Date createdAt;
    private Date updatedAt;

    // categoryId
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

    @OneToMany(mappedBy = "product")
    private List<OrderDetail> orderDetails;

    @OneToMany(mappedBy = "product")
    private List<Review> reviews;

}
