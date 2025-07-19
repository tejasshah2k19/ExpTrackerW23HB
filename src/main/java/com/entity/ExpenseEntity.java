package com.entity;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Entity
@Table(name = "expenses")
@FieldDefaults(level = AccessLevel.PRIVATE)
@Data
public class ExpenseEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer expenseId;
	String title;
	String category;
	String subcategory;
	String vendor;
	String paymentType;// : CASH , UPI , CC
	Integer amount;
	@DateTimeFormat(pattern = "DD-MM-YYYY")
	LocalDate transactionDate;
	String description;

	//fk userId
	
	@ManyToOne
	@JoinColumn(name = "userId")
	UserEntity user; 
	
}
