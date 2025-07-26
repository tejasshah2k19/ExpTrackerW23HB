package com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.entity.ExpenseEntity;
import com.entity.UserEntity;

@Repository
public interface ExpenseRepository extends JpaRepository<ExpenseEntity, Integer> {

	List<ExpenseEntity> findByUser(UserEntity user);
}
