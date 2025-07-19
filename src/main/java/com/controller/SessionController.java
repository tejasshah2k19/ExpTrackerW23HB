package com.controller;

import java.time.LocalDateTime;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.entity.UserEntity;
import com.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

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

		// insert
		userRepository.save(userEntity);// insert
		return "Login";
	}

	@GetMapping(value = { "/", "login" })
	public String login() {
		return "Login";
	}

	@PostMapping("login")
	public String authenticate(String email, String password,HttpSession session) {

		// findByEmail
		Optional<UserEntity> op = userRepository.findByEmail(email);

		if (op.isPresent()) {

			UserEntity dbUser = op.get();
			if(dbUser.getPassword().equals(password)) {
				session.setAttribute("user", dbUser);
				return "redirect:/newexpense";//url
			}
		}
		return "Login";
	}

}
