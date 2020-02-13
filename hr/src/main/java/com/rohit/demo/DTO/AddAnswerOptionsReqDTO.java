package com.rohit.demo.DTO;

public class AddAnswerOptionsReqDTO {
	
	private String option;
	private String type;
	
	public String getOption() {
		return option; 	
	}
	public void setOption(String option) {
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
		return "AddAnswerOptionsReqDTO [option=" + option + ", type=" + type + "]";
	}
	
	
	
	
}
