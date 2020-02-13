package com.rohit.demo.dao;

import org.springframework.data.repository.CrudRepository;

import com.rohit.demo.model.Admin;


public interface AdminRepo extends CrudRepository<Admin, Integer> {
	public Admin findByUserAndPass(String user, String pass);
	
}
