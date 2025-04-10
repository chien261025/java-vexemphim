package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.domain.Product;
import com.example.demo.domain.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {

    Role findByName(String name);
}
