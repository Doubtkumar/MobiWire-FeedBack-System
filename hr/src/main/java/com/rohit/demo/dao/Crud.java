package com.rohit.demo.dao;

import org.springframework.data.repository.CrudRepository;

import com.rohit.demo.model.User;

public interface Crud extends CrudRepository<User, Integer>{
		public User findByUsernameAndPassword(String username, String password);
		
		public User findByUsername(String username);
}

