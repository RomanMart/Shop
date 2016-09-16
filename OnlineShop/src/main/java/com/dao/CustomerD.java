package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.entity.Customer;

public interface CustomerD extends JpaRepository<Customer, Integer>{
	@Query("from Customer c where c.username like:username")
	Customer findByUsername(@Param("username") String username);
//uipwefgiwsuidgc
}
