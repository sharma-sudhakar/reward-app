package com.telus.rewardservice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.telus.rewardservice.model.Customer;
import com.telus.rewardservice.service.CustomerService;

@CrossOrigin(origins="http://localhost:3000")
@RestController
@RequestMapping("customers")
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	
	@GetMapping
	public List<Customer> findCustomerAll() {
		return customerService.getCustomers();
	}
	
	@GetMapping("{id}")
	public ResponseEntity<Customer> getCustomer(@PathVariable Integer id) {
		Customer customer = customerService.getCustomer(id);
		if (customer == null) return new ResponseEntity<Customer>(HttpStatus.NOT_FOUND);
		return new ResponseEntity<Customer>(customer, HttpStatus.OK);
	}
	
	
}
