package com.example.demo.repository;

import org.springframework.stereotype.Repository;

import com.example.demo.domain.User;

import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface userRepository extends JpaRepository<User, Long> {
    
}
