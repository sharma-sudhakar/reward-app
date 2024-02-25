package com.telus.rewardserivce;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication(scanBasePackages = {"com.telus.rewardservice"})
@EnableJpaRepositories(basePackages = {"com.telus.rewardservice"})
@EntityScan(basePackages = {"com.telus.rewardservice"})
public class RewardApplication {

	public static void main(String[] args) {
		SpringApplication.run(RewardApplication.class, args);
	}
	
	
}
