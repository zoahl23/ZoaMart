package com.example.zoamart.domain;

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
@Table(name = "cart_details")
public class CartDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private int quantity;
    private int price;

    // cartId
    @ManyToOne
    @JoinColumn(name = "cart_id")
    private Cart cart;

    // productId
    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

}
