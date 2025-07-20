package com.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name="budgets")
@Data
public class BudgetEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer budgetId;
	
	Integer amount;
	
	@OneToOne
	@JoinColumn(name="userId")
	UserEntity user;
}
