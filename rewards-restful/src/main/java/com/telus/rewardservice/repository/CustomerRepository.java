package com.telus.rewardservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.telus.rewardservice.model.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer>{

}
