package com.enomy.project.repo;




import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.enomy.project.model.User;


@Repository
public interface UserRepo extends JpaRepository<User, Long>{
	@Query (value = "SELECT c FROM User c where c.email = :email AND c.password = :password")
	
	public User userLogin(@Param("email") String email, @Param ("password") String password);


}
