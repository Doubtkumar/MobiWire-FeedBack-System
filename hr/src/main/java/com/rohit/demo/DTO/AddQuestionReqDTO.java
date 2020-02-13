package com.rohit.demo.DTO;

import java.util.List;

public class AddQuestionReqDTO {
	
	private String question;
	private List<AddAnswerOptionsReqDTO> options;
	private String type;
	
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public List<AddAnswerOptionsReqDTO> getOptions() {
		return options;
	}
	public void setOptions(List<AddAnswerOptionsReqDTO> options) {
		this.options = options;
	}
	
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "AddQuestionReqDTO [question=" + question + ", options=" + options + ", type=" + type + "]";
	}
	
	
	
	
	
	
	
}
