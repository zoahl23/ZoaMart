package com.example.zoamart.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.zoamart.domain.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {

}
