package com.enomy.project.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Column;

@Entity
@Table(name="currency")
public class Currency {
    
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long currency_ID;
	
	@Column(name="currency_name")
	private String currencyName;
	
	@Column(name="exchange_rate")
	private double exchangeRate;


	public Long getCurrency_ID() {
		return currency_ID;
	}

	public void setCurrency_ID(Long currency_ID) {
		this.currency_ID = currency_ID;
	}

	public String getCurrencyName() {
		return currencyName;
	}

	public void setCurrencyName(String currencyName) {
		this.currencyName = currencyName;
	}

	public double getExchangeRate() {
		return exchangeRate;
	}

	public void setExchangeRate(double exchangeRate) {
		this.exchangeRate = exchangeRate;
	}



	
	
}
