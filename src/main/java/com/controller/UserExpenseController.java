package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.entity.ExpenseEntity;
import com.entity.UserEntity;
import com.repository.ExpenseRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserExpenseController {

	@Autowired
	ExpenseRepository expenseRepository;

	@GetMapping("userlistexp")
	public String userListExp(HttpSession session,Model model) {
		UserEntity user = (UserEntity) session.getAttribute("user");

		List<ExpenseEntity> expenses = expenseRepository.findByUser(user);
		model.addAttribute("expenses",expenses);
		return "UserListExp";
	}
}
