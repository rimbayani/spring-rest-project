package com.nusantara.app;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@ComponentScan({"com.nusantara.rest","com.nusantara.serviceimpl","com.nusantara.error"})
@EntityScan({"com.nusantara.model"})
@EnableJpaRepositories(basePackages = {"com.nusantara.repositories"})
@EnableTransactionManagement
public class MainApplication {
	public static void main(String[] args) {
		SpringApplication.run(MainApplication.class, args);
	}
}