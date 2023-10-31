package com.enomy.project.controller;

import java.io.IOException;



import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.enomy.project.model.Currency;
import com.enomy.project.service.CurrencyService;

@Controller
public class CurrencyController {
	
	@Autowired
	CurrencyService currencyService;
	List<Currency> listCurrencies;
	

	@RequestMapping(value="/currency")
	public ModelAndView currency(HttpServletResponse response) throws IOException{
		listCurrencies = currencyService.listAll();
		ModelAndView mav = new ModelAndView("currency");
		   mav.addObject("listCurrency", listCurrencies);
		 return mav;
		 
	}
	
	@RequestMapping(value = "/convert", method = RequestMethod.POST)
	public ModelAndView convert(@RequestParam Double selectedCurrency, @RequestParam Double amount) {
	Double amountConverted = amount * selectedCurrency;
	System.out.println("Selected currency value :" + selectedCurrency);
	
	ModelAndView mav = new ModelAndView ("currency");
	mav.addObject("amountConverted", amountConverted);
	mav.addObject("listCurrency", listCurrencies);
	
	return mav;
	
}
}
