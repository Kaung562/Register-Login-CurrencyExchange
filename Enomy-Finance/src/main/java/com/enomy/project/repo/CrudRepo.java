package com.enomy.project.repo;

import java.util.List;

public interface CrudRepo<T, ID> {

	void save(T model);
	List<T> findAll();
	T findById(Long userID);
	void deleteById(Long userID);
	
}
