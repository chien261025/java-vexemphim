package com.example.demo.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "Order_detail")
public class OrderDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String quantity;
    private String price;

    // order id;
    // product id;

    // order_detail -> many to one -> order
    @ManyToOne
    @JoinColumn(name = "order_id")
    private Order order;

    // order_detail -> many to one -> product
    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;
}
