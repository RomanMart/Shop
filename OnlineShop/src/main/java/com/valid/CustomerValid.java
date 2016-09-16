package com.valid;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.entity.Customer;

public class CustomerValid implements Validator{

	public boolean supports(Class<?> arg0) {
		System.out.println("support");
		return Customer.class.equals(arg0);
	}

	public void validate(Object arg0, Errors arg1) {
		System.out.println("validate 1");
		Customer customer= (Customer) arg0;
		System.out.println("validate 2");
		if(customer.getUsername().isEmpty()){
			System.out.println("validate 3");
			arg1.rejectValue("name", "error", "o-no-no!!!emptyName!");
		}		
	}

}
