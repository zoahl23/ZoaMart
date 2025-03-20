package com.example.zoamart.dto;

import java.util.Date;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
public class UserDTO {
    private long id;

    @NotNull
    @Email(message = "Email không hợp lệ", regexp = ".+[@].+[\\.].+")
    private String email;

    @NotNull
    @Size(min = 6, message = "Mật khẩu cần tối thiểu 6 ký tự")
    private String password;

    @NotNull
    @NotEmpty(message = "Tên không được để trống")
    private String fullName;

    @NotNull
    @NotEmpty(message = "Địa chỉ không được để trống")
    private String address;

    @NotNull
    @Size(min = 10, max = 10, message = "Số điện thoại phải có 10 chữ số")
    @Pattern(regexp = "\\d+", message = "Số điện thoại chỉ được chứa chữ số")
    private String phone;
    private Date createdAt;
    private Date updatedAt;
    private long roleId;
    private String roleName;
}
