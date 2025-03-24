package com.example.zoamart.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.example.zoamart.domain.Role;
import com.example.zoamart.domain.User;
import com.example.zoamart.dto.UserDTO;
import com.example.zoamart.mapper.UserMapper;
import com.example.zoamart.repository.UserRepository;

import lombok.RequiredArgsConstructor;

import com.example.zoamart.repository.RoleRepository;

@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public UserDTO getUserById(Long id) {
        User user = userRepository.findById(id).orElseThrow(() -> new RuntimeException("User not found"));
        return UserMapper.USER_INSTANCE.toDTO(user);
    }

    public List<UserDTO> getAllUsers() {
        List<User> users = userRepository.findAll();
        return users.stream()
                .map(UserMapper.USER_INSTANCE::toDTO)
                .collect(Collectors.toList());
    }

    public UserDTO handleSaveUser(UserDTO userDTO) {
        User user = UserMapper.USER_INSTANCE.toEntity(userDTO);
        User savedUser = userRepository.save(user);
        return UserMapper.USER_INSTANCE.toDTO(savedUser);
    }

    public void deleteAUser(long id) {
        this.userRepository.deleteById(id);
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }

    public boolean checkEmailExists(String email) {
        return this.userRepository.existsByEmail(email);
    }

    public UserDTO getUserByEmail(String email) {
        User user = userRepository.findByEmail(email).orElseThrow(() -> new RuntimeException("User not found"));
        return UserMapper.USER_INSTANCE.toDTO(user);
    }

    public long countU() {
        return this.userRepository.count();
    }
}
