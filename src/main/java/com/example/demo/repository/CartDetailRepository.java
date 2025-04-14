package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.domain.Cart;
import com.example.demo.domain.CartDetail;
import com.example.demo.domain.Product;

@Repository
public interface CartDetailRepository extends JpaRepository<CartDetail, Long> {

    CartDetail findByProductAndCart(Product product, Cart cart);

    CartDetail findByProductId(long id);

    CartDetail findById(long id);

    long countByCartId(long cartId);

}
