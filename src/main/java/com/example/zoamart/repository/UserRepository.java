package com.example.zoamart.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.zoamart.domain.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
    User save(User user);
}
