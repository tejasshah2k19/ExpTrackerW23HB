package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.entity.BudgetEntity;
import com.entity.UserEntity;

public interface BudgetRepository extends JpaRepository<BudgetEntity, Integer>{

	
	BudgetEntity findByUser(UserEntity user);
}
