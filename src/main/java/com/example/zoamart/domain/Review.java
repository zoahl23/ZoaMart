package com.example.zoamart.domain;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name = "reviews")
public class Review {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private int rating;
    private String comment;
    private Date createdAt;

    // userId
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    // productId
    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

}
