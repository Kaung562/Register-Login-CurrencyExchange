package com.enomy.project.service;

import java.util.List;




import javax.transaction.Transactional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enomy.project.model.Currency;

import com.enomy.project.repo.CurrencyRepo;



@Service
@Transactional
public class CurrencyService{
	
	@Autowired
	private CurrencyRepo currencyRepo;

	 public void save(Currency currency) { 
		 currencyRepo.save(currency);
	 }
	 
	 public List<Currency> listAll(){
		 return (List<Currency>) currencyRepo.findAll();
	 }
	 
}