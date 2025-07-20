package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.entity.BudgetEntity;
import com.entity.UserEntity;
import com.repository.BudgetRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class BudgetController {

	@Autowired
	BudgetRepository budgetRepository;
	
	@GetMapping("viewbudget")
	public String viewBudget(HttpSession session,Model model) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		
		BudgetEntity budget  = budgetRepository.findByUser(user);
		model.addAttribute("budget",budget);
		
		
		return "ViewBudget";
	}
	
	@PostMapping("addBudget")
	public String addBudget(BudgetEntity budgetEntity,HttpSession session) {
		
		UserEntity user = (UserEntity) session.getAttribute("user");
		budgetEntity.setUser(user);
		budgetRepository.save(budgetEntity);
		
		return "redirect:/home";
	}
}





