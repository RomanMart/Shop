package com.service;

import java.util.List;

import com.entity.Phone;

public interface PhoneSRV {

	void save(Phone phone);
	List<Phone> findAll();
	Phone findOne(int id);
	void remove(Phone phone);
	List<Phone> findByPrice(Double price); 
	void remove(Integer id);
	List<Phone> findByBrand(String brand);
	
	
	
}