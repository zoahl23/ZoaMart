package com.example.zoamart.service;

import org.springframework.stereotype.Service;

import com.example.zoamart.domain.User;
import com.example.zoamart.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User handleSaveUser(User user) {
        return this.userRepository.save(user);
    }

}
