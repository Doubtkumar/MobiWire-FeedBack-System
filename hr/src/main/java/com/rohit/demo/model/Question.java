package com.rohit.demo.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;


@Entity
public class Question {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(unique = true, nullable = false)
	private int questionId;
	
	@Column(updatable = false, nullable = false)
	private String question;
	
	@Column(updatable = false, nullable = false)
	private String type;
	
	
	@OneToMany(mappedBy = "question", cascade = CascadeType.ALL , fetch = FetchType.EAGER)
	private List<AnswersOption> option;
	
	
	
	public int getQuestionId() {
		return questionId;
	}


	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}


	public String getQuestion() {
		return question;
	}


	public void setQuestion(String question) {
		this.question = question;
	}


	public List<AnswersOption> getOption() {
		return option;
	}


	public void setOption(List<AnswersOption> option) {
		this.option = option;
	}
	
	

	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	@Override
	public String toString() {
		return "Question [questionId=" + questionId + ", question=" + question + ", type=" + type + ", option=" + option
				+ "]";
	}


	
}
