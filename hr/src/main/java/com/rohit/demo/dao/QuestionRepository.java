package com.rohit.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rohit.demo.model.Question;

public interface QuestionRepository extends JpaRepository<Question, Integer> {

}
