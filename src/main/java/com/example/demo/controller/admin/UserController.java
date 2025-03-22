package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.domain.User;
import com.example.demo.service.UserService;

@Controller
public class UserController {

        private final UserService userService;

        public UserController(UserService userService) {
                this.userService = userService;
        }

        @RequestMapping("/admin/user")
        public String getMethodName(Model model) {
                List<User> users = this.userService.getUserFindAll();
                model.addAttribute("users", users);
                return "/admin/user/tables";
        }

        @GetMapping("/admin/user/create")
        public String getCreate(Model model, User newUser) {
                model.addAttribute("newUser", newUser);
                return "/admin/user/createUser";
        }

        // chức năm tạo mới người dùng

        @PostMapping("/admin/user/createUser")
        public String postCreateUser(@ModelAttribute("newUser") User newUser) {
                this.userService.getSaveUser(newUser);
                return "redirect:/admin/user ";
        }

}
