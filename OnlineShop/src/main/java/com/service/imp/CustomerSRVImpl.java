package com.service.imp;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.dao.CustomerD;
import com.entity.Customer;
import com.service.CustomerSRV;

@Service("uuu")
public class CustomerSRVImpl implements CustomerSRV,UserDetailsService{
	@Autowired
	private CustomerD customerDAO;
	@Transactional
	public void save(Customer customer) {
		customerDAO.save(customer);
	}
	@Transactional
	public void save(String username, String password) {
		Customer customer = new Customer();
		customer.setUsername(username);
		customer.setPassword(password);
		customerDAO.save(customer);
	}

	public Customer findByUsername(String username) {
		return customerDAO.findByUsername(username);
	}
	
	public UserDetails loadUserByUsername(String arg0)
			throws UsernameNotFoundException {
		
		return findByUsername(arg0);
	}

}
