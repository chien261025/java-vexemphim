package com.example.demo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
    @GetMapping("/admin")
    public String getMethodName() {
<<<<<<< HEAD
        return "/admin/dashboard/index";
=======
        return "admin/dashboard/show";
>>>>>>> dc4f7333657606022870a36fbfef9b04a0636ca6
    }
}
