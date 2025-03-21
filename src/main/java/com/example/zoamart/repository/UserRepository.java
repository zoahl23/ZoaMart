package com.example.zoamart.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.zoamart.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User user);

    List<User> findAll();

    Optional<User> findById(long id);

    void deleteById(long id);

    boolean existsByEmail(String email);

    Optional<User> findByEmail(String email);
}
