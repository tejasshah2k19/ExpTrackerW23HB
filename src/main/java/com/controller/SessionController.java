package com.controller;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.entity.UserEntity;
import com.repository.UserRepository;

@Controller
public class SessionController {

	@Autowired
	UserRepository userRepository;
	
	@GetMapping("signup")
	public String signup() {
		return "Signup";
	}

	@PostMapping("saveuser")
	public String saveUser(UserEntity userEntity) {
		userEntity.setRole("USER");
		userEntity.setCreatedAt(LocalDateTime.now());
		userEntity.setActive(true);
		
		//insert 
		userRepository.save(userEntity);//insert 
		return "Login";
	}
}
