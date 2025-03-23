package com.example.zoamart.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.zoamart.domain.Order;
import com.example.zoamart.repository.OrderRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class OrderService {

    private final OrderRepository orderRepository;

    public List<Order> getAllOrders() {
        return this.orderRepository.findAll();
    }

}
