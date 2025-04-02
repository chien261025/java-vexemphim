package com.example.demo.controller.client;

import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.domain.Product;
import com.example.demo.domain.Register;
import com.example.demo.domain.User;
import com.example.demo.service.ProductService;
import com.example.demo.service.userService;

import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class homePageController {

    private final ProductService productService;
    private final userService userService;
    private final PasswordEncoder passwordEncoder;

    public homePageController(ProductService productService, userService userService,
            PasswordEncoder passwordEncoder) {
        this.productService = productService;
        this.userService = userService;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        List<Product> products = this.productService.getFindAllProduct();
        model.addAttribute("products", products);
        return "client/homepage/showHomepage";
    }

    @GetMapping("/login")
    public String getLogin() {
        return "client/homepage/login";
    }

    @GetMapping("/register")
    public String getRegister(Model model, Register newRegister) {
        model.addAttribute("newRegister", newRegister);
        return "client/homepage/register";
    }

    @PostMapping("/register")
    public String postRegister(Model model, @ModelAttribute("newRegister") Register register) {
        // Xử lý đăng ký người dùng ở đây
        String password = register.getPassword();
        String confirmPassword = register.getConfirmPassword();
        if (password.equals(confirmPassword)) {
            User user = new User();
            String passwordEncoder = this.passwordEncoder.encode(password);
            user.setName(register.getFirstName() + " " + register.getLastName());
            user.setPassword(passwordEncoder);
            user.setEmail(register.getEmailAddress());
            user.setRole(this.userService.getFindName("USER")); // Gán vai trò mặc định là USER
            user.setPhone(register.getPhone());
            this.userService.getSaveUser(user);
        } else {
            model.addAttribute("passwordMismatchError", "Passwords do not match. Please try again.");
            return "client/homepage/register";
        }
        return "client/homepage/login"; // Chuyển hướng đến trang đăng nhập sau khi đăng ký thành công
    }
}
