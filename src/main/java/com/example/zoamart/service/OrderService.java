package com.example.zoamart.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.example.zoamart.domain.Order;
import com.example.zoamart.domain.OrderDetail;
import com.example.zoamart.domain.User;
import com.example.zoamart.repository.OrderDetailRepository;
import com.example.zoamart.repository.OrderRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class OrderService {

    private final OrderRepository orderRepository;
    private final OrderDetailRepository orderDetailRepository;

    public List<Order> getAllOrders() {
        return this.orderRepository.findAll();
    }

    public Optional<Order> getOrderById(long id) {
        return this.orderRepository.findById(id);
    }

    public List<Order> getAllOrdersByUser(User user) {
        return this.orderRepository.findByUser(user);
    }

    public void deleteOrderById(long id) {
        Optional<Order> order = this.getOrderById(id);
        if (order.isPresent()) {
            Order o = order.get();
            List<OrderDetail> orderDetails = o.getOrderDetails();
            for (OrderDetail detail : orderDetails) {
                this.orderDetailRepository.deleteById(detail.getId());
            }
        }
        this.orderRepository.deleteById(id);
    }

    public void updateOrder(Order o) {
        Optional<Order> order = this.getOrderById(o.getId());
        if (order.isPresent()) {
            Order currentOrder = order.get();
            currentOrder.setStatus(o.getStatus());
            this.orderRepository.save(currentOrder);
        }
    }

}
