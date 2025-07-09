package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.entity.ExpenseEntity;
import com.repository.ExpenseRepository;

@Controller
public class ExpenseController {

	@Autowired
	ExpenseRepository expenseRepository;
	
	@GetMapping("newexpense")
	public String newExpense() {
		return "NewExpense";
	}
	
	@PostMapping("saveExpense")
	public String saveExpense(ExpenseEntity expenseEntity) {
		expenseRepository.save(expenseEntity);
		return "NewExpense";
	}
	
	@GetMapping("listexp")
	public String listExp(Model model) {
	List<ExpenseEntity> expenses  =	expenseRepository.findAll(); 
		model.addAttribute("expenses",expenses);
		return "ListExp";
	}
	
	@GetMapping("deleteexpense")
	public String deleteExp(Integer expenseId) {
		
		expenseRepository.deleteById(expenseId);
		
		return "redirect:/listexp";//url; 
	}
	
	
	
	
}
