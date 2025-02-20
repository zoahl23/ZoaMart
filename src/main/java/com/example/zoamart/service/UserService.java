package com.example.zoamart.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.zoamart.domain.User;
import com.example.zoamart.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    // do ko có findByEmail nên phải tự định nghĩa bằng keyword bên REPOSITORY
    public List<User> getAllUsersByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public User handleSaveUser(User user) {
        return this.userRepository.save(user);
    }

}
