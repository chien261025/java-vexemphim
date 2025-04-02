package com.example.demo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OderController {
    @GetMapping("/admin/order")
    public String getOrderPage() {
        return "admin/order/showOrder";
    }

}
