package com.example.zoamart;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//@SpringBootApplication
// tạm thời tắt Security để mỗi lần chạy ko phải login
@SpringBootApplication(exclude = org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
public class ZoamartApplication {

	public static void main(String[] args) {
		SpringApplication.run(ZoamartApplication.class, args);
	}

}
