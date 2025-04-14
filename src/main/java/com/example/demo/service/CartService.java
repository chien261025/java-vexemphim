package com.example.demo.service;

import org.springframework.stereotype.Service;

import com.example.demo.domain.Cart;
import com.example.demo.domain.CartDetail;
import com.example.demo.domain.User;
import com.example.demo.repository.CartDetailRepository;
import com.example.demo.repository.CartRepository;

@Service
public class CartService {

    private final CartRepository cartRepository;
    private final CartDetailRepository cartDetailRepository;

    public CartService(CartRepository cartRepository, CartDetailRepository cartDetailRepository) {
        this.cartDetailRepository = cartDetailRepository;
        this.cartRepository = cartRepository;
    }

    public Cart findByUser(User user) {
        return this.cartRepository.findByUser(user);
    }

    public void updateCartItemQuantity(Long cartDetailId, int quantity) {
        CartDetail detail = cartDetailRepository.findById(cartDetailId)
                .orElseThrow(() -> new RuntimeException("CartDetail not found"));

        detail.setQuantity(quantity);
        cartDetailRepository.save(detail);
    }

}
