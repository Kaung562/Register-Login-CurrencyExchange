package com.enomy.project.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.enomy.project.model.Currency;



@Repository
public interface CurrencyRepo extends JpaRepository<Currency, Long>{
	
}
