package com.example.demo.service;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.domain.Product;
import com.example.demo.repository.ProductRepository;

@Service
public class ProductService {

    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public void handleSaveProduct(Product product) {
        this.productRepository.save(product);
    }

    public List<Product> getFindAllProduct() {
        List<Product> products = this.productRepository.findAll();
        return products;
    }

    public void handleProductDelete(long id) {
        this.productRepository.deleteById(id);
    }

    public Product getFindId(long id) {
        Product product = this.productRepository.findById(id);
        return product;
    }

    //
}
