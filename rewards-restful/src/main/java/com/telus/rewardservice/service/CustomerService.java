package com.telus.rewardservice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.telus.rewardservice.model.Customer;
import com.telus.rewardservice.repository.CustomerRepository;

@Service
public class CustomerService {
	
	@Autowired
	private CustomerRepository customerRepository;
	
	
	public List<Customer> getCustomers() {
		return customerRepository.findAll();
	}
	
	public Customer getCustomer(Integer customerId) {
		return customerRepository.findById(customerId).orElse(null);
	}
	
}
