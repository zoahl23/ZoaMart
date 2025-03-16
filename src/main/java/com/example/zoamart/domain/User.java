package com.example.zoamart.domain;

import java.util.Date;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Entity
@Data
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // ID tự động tăng
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

    // roleId
    // many users to one role
    @ManyToOne
    @JoinColumn(name = "role_id")
    private Role role;

    // one user to many orders
    @OneToMany(mappedBy = "user")
    private List<Order> orders;

    @OneToMany(mappedBy = "user")
    private List<Review> reviews;

}
