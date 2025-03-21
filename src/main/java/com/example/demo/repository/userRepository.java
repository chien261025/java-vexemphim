package com.example.demo.repository;

import org.springframework.stereotype.Repository;

import com.example.demo.domain.User;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User newUser);
}
