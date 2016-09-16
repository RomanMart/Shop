package com.service;

import com.entity.Customer;

public interface CustomerSRV {
	void save(Customer customer);
	void save(String username,String password);
	Customer findByUsername(String username);
	
}
