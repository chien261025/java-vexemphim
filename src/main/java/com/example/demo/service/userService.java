package com.example.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.domain.Role;
import com.example.demo.domain.User;
import com.example.demo.repository.RoleRepository;
import com.example.demo.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    public void getSaveUser(User user) {
        this.userRepository.save(user);
    }

    public List<User> getUserFindAll() {
        return this.userRepository.findAll();
    }

    public User getFindById(long id) {
        return this.userRepository.findById(id);
    }

    public void handleDeleteUser(long id) {
        this.userRepository.deleteById(id);
    }

    public Role getFindName(String name) {
        return this.roleRepository.findByName(name);
    }

    public User getFindEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public long getUserIdByUsername(String username) {
        User user = this.userRepository.findByEmail(username);
        if (user != null) {
            return user.getId();
        }
        return -1;
    }
}
