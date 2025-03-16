package com.example.zoamart.dto;

import java.util.Date;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
public class UserDTO {
    private long id;

    @NotNull
    @Email(message = "Email is not valid", regexp = ".+[@].+[\\.].+")
    private String email;

    @NotNull
    @Size(min = 6, message = "Password must be at least 6 characters")
    private String password;

    @NotNull
    @NotEmpty(message = "Full Name cannot be empty")
    private String fullName;

    @NotNull
    @NotEmpty(message = "Address cannot be empty")
    private String address;

    @NotNull
    @Size(min = 10, message = "Phone number must be at least 10 characters")
    private String phone;
    private Date createdAt;
    private Date updatedAt;
    private long roleId;
    private String roleName;
}
