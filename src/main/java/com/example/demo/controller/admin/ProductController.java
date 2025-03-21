package com.example.demo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {
    @GetMapping("/admin/table")
    public String getMethodName() {
        return "/admin/dashboard/tables";
    }
}
