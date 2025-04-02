package com.example.demo.controller.client;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.demo.domain.Product;
import com.example.demo.service.ProductService;

@Controller
public class ProductClientController {

    private final ProductService productService;

    public ProductClientController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/product")
    public String getProductPag(Model model) {
        List<Product> products = this.productService.getFindAllProduct();
        model.addAttribute("products", products);
        return "client/product/showProduct";
    }

    @GetMapping("/client/product/showDetail/{id}")
    public String getProductDetail(Model model, @PathVariable long id) {
        Product product = this.productService.getFindId(id);
        model.addAttribute("product", product);
        return "client/product/showDetail";
    }
}
