package com.example.demo.controller.admin;

import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.domain.User;
import com.example.demo.service.UserService;

@Controller
public class UserController {

        private final UserService userService;
        private final PasswordEncoder passwordEncoder;

        public UserController(UserService userService, PasswordEncoder passwordEncoder) {
                this.userService = userService;
                this.passwordEncoder = passwordEncoder;
        }

        @RequestMapping("/admin/user")
        public String getMethodName(Model model) {
                List<User> users = this.userService.getUserFindAll();
                model.addAttribute("users", users);
                return "admin/user/tables";
        }

        @GetMapping("/admin/user/create")
        public String getCreate(Model model, User newUser) {
                model.addAttribute("newUser", newUser);
                return "admin/user/createUser";
        }

        // chức namg tạo mới người dùng
        @PostMapping("/admin/user/createUser")
        public String postCreateUser(Model model, @ModelAttribute("newUser") User newUser) {
                newUser.setRole(this.userService.getFindName(newUser.getRole().getName()));
                newUser.setPassword(this.passwordEncoder.encode(newUser.getPassword()));
                this.userService.getSaveUser(newUser);
                return "redirect:/admin/user ";
        }

        // update người dùng
        @RequestMapping(value = "/admin/user/editUser/{id}")
        public String getEditUserPage(Model model, @PathVariable long id) {
                User user = this.userService.getFindById(id);
                model.addAttribute("editUser", user);
                return "admin/user/editUser";
        }

        @PostMapping("/admin/user/editUser")
        public String postEditUser(Model model, @ModelAttribute("editUser") User editUser) {

                User updateUser = this.userService.getFindById(editUser.getId());
                if (updateUser != null) {
                        updateUser.setName(editUser.getName());
                        updateUser.setPassword(editUser.getPassword());
                        updateUser.setEmail(editUser.getEmail());
                        updateUser.setPhone(editUser.getPhone());
                        updateUser.setRole(this.userService.getFindName(editUser.getRole().getName()));
                        this.userService.getSaveUser(updateUser);
                }
                return "redirect:/admin/user";
        }

        // delete dử liệu
        @RequestMapping(value = "/admin/user/deleteUser/{id}")
        public String getDeleteUserPage(Model model, @PathVariable long id) {
                model.addAttribute("id", id);
                User user = new User();
                user.setId(id);
                model.addAttribute("deleteUser", user);
                return "admin/user/deleteUser";
        }

        @PostMapping("/admin/user/deleteUser")
        public String postDeleteUser(Model model, @ModelAttribute("deleteUser") User user) {
                this.userService.handleDeleteUser(user.getId());
                return "redirect:/admin/user";
        }
}
