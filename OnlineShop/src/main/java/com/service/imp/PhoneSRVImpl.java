package com.service.imp;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.PhoneD;
import com.entity.Phone;
import com.service.PhoneSRV;

@Service
public class PhoneSRVImpl implements PhoneSRV {
	@Autowired
	private PhoneD phoneD;

	@Transactional
	public void save(String brand) {
		phoneD.save(new Phone());
	}

	public void save(Phone phone) {
		phoneD.save(phone);
	}

	public List<Phone> findAll() {
		return phoneD.findAll();
	}

	public Phone findOne(int id) {
		return phoneD.findOne(id);
	}

	public void save(String brand, String type, double price) {
		Phone phone = new Phone();
		phone.setBrand(brand);
		phone.setType(type);
		phone.setPrice(price);
		phoneD.save(phone);
	}

//	@Transactional
//	public void remove(String brand, String type) {
//		Phone phone = phoneD.findByBrand(brand);
//		phoneD.delete(phone.getId());
//	}

	public List<Phone> findByPrice(Double price) {

		return phoneD.findByPrice(price);
	}

	public void remove(Integer id) {
		Phone phone = phoneD.findById(id);
		phoneD.delete(phone.getId());
	}

	public void remove(Phone phone) {
		phoneD.delete(phone);
	}

	public List<Phone> findByBrand(String brand) {
		return phoneD.findByBrand(brand);
	}
	


}