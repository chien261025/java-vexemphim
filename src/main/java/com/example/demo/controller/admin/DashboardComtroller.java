package com.example.demo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DashboardComtroller {
    @GetMapping("/admin/dashboard")
    public String getDashboardPag() {
        return "/admin/dashboard/showDashboard";
    }

    // @GetMapping("/")
    // public String getDashboardPage() {
    // return "/admin/dashboard/showDashboard";
    // }
}
