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
@Table(name = "order_details")
public class OrderDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private int quantity;
    private double unitPrice;

    // orderId
    @ManyToOne
    @JoinColumn(name = "order_id")
    private Order order;

    // productId
    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;
}
