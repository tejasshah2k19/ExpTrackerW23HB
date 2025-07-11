package com.controller;

import java.util.List;
import java.util.Optional;

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
		List<ExpenseEntity> expenses = expenseRepository.findAll();
		model.addAttribute("expenses", expenses);
		return "ListExp";
	}

	@GetMapping("deleteexpense")
	public String deleteExp(Integer expenseId) {

		expenseRepository.deleteById(expenseId);

		return "redirect:/listexp";// url;
	}

	@GetMapping("viewexpense")
	public String viewExp(Integer expenseId, Model model) {
		Optional<ExpenseEntity> op = expenseRepository.findById(expenseId);// id is not valid

		if (op.isEmpty()) {
			return "redirect:/listexp";// url;
		} else {
			ExpenseEntity expEntity = op.get();
			model.addAttribute("expense", expEntity);
			return "ViewExp";
		}
	}

	@GetMapping("editExpense")
	public String editExp(Integer expenseId, Model model) {
		Optional<ExpenseEntity> op = expenseRepository.findById(expenseId);// id is not valid

		if (op.isEmpty()) {
			return "redirect:/listexp";// url;
		} else {
			ExpenseEntity expEntity = op.get();
			model.addAttribute("expense", expEntity);
			return "EditExp";
		}
	}

	@PostMapping("updateexpense")
	public String updateExp(ExpenseEntity expenseEntity) {

//		expenseRepository.save(expenseEntity);

		Optional<ExpenseEntity> op = expenseRepository.findById(expenseEntity.getExpenseId());// id is not valid

		ExpenseEntity dbExp = op.get();

		dbExp.setAmount(expenseEntity.getAmount());
		dbExp.setTransactionDate(expenseEntity.getTransactionDate());

		// dbExp->expenseId
		expenseRepository.save(dbExp);// update or insert?

		return "redirect:/listexp";
	}

}
