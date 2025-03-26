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
    public void exportToTextFile(String filePath) throws IOException {
        List<Product> products = productRepository.findAll();

        try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath))) {
            for (Product product : products) {
                String line = String.format(
                        "Name: %s | Price: %s | Quantity: %s | Factory: %s | Image: %s | Short Desc: %s | Detail Desc: %s",
                        product.getName(),
                        product.getPrice(),
                        product.getQuantity(),
                        product.getFactory(),
                        product.getImage(),
                        product.getShortDescription(),
                        product.getDetailedDescription());
                writer.write(line);
                writer.newLine();
            }
        }
    }
}
