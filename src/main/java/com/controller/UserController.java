package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.entity.UserEntity;
import com.repository.UserRepository;

@Controller
public class UserController {

	@Autowired
	UserRepository userRepository;

	@GetMapping("/users")
	public String getAllUsers(Model model) {
		List<UserEntity> users = userRepository.findAll(); // select * from users
		model.addAttribute("users",users);
		return "ListUser";
	}
}
