package com.example.zoamart.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.zoamart.domain.Cart;
import com.example.zoamart.domain.CartDetail;
import com.example.zoamart.domain.Product;

@Repository
public interface CartDetailRepository extends JpaRepository<CartDetail, Long> {

    CartDetail findByCartAndProduct(Cart cart, Product product);

    List<CartDetail> findByCart(Cart cart);

    @Modifying
    @Transactional
    void deleteByCartId(Long cartId);
}
