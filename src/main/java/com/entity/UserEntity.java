package com.entity;

import java.time.LocalDateTime;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Entity // create table
@Table(name = "users") // table name
@FieldDefaults(level = AccessLevel.PRIVATE)
@Data
public class UserEntity {

	@Id // pk
	@GeneratedValue(strategy = GenerationType.IDENTITY) // auto increment
	Integer userId;

	String firstName;
	String lastName;
	String email;
	String password;
	String role;
	Boolean active;		
	LocalDateTime createdAt;		
	Integer otp;		
	
//	@OneToMany
//	@JoinColumn(name="userId")
//	List<ExpenseEntity> expenses; 
//	
	
}
