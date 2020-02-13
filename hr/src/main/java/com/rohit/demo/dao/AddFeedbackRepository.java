package com.rohit.demo.dao;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.rohit.demo.model.FeedbackAnswer;

public interface AddFeedbackRepository extends JpaRepository<FeedbackAnswer, Integer> {
	
	@Transactional
	Long deleteByUserId(int userId);
	 
}
