package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.domain.User;

@Repository
public interface userRepository extends JpaRepository<User, Long> {
    User save(User newUser);

    User findById(long id);

}
