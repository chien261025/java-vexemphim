package com.example.demo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DashboardComtroller {
    @GetMapping("/admin/dashboard")
    public String getDashboardPag() {
        return "admin/dashboard/index";
    }

    @GetMapping("/admin")
    public String getDashboardPage() {
        return "admin/dashboard/index";
    }
}
