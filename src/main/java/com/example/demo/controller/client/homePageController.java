package com.example.demo.controller.client;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.domain.Product;
import com.example.demo.service.ProductService;

@Controller
public class homePageController {

    private final ProductService productService;

    public homePageController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        List<Product> products = this.productService.getFindAllProduct();
        model.addAttribute("products", products);
        return "/client/homepage/showHomepage";
    }

}
