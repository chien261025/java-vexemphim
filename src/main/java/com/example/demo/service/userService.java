package com.example.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.domain.User;
import com.example.demo.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void getSaveUser(User user) {
        this.userRepository.save(user);
    }

    public List<User> getUserFindAll() {
        return this.userRepository.findAll();
    }
}
