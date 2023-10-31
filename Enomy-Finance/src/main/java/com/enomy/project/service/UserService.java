package com.enomy.project.service;




import javax.transaction.Transactional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enomy.project.model.User;
import com.enomy.project.repo.UserRepo;


@Service
@Transactional
public class UserService{
	@Autowired
	private UserRepo userRepo;

	 public void save(User user) { 
		 
		 
		 userRepo.save(user);
	 }

	public User findByEmailAndPassword(String email,String password) {
		return userRepo.userLogin(email, password);
		
	}


}


