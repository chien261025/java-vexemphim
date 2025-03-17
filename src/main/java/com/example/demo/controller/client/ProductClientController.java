package com.example.demo.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductClientController {
    @GetMapping("/product")
    public String getProductPag() {
        return "/client/product/showProduct";
    }

}
