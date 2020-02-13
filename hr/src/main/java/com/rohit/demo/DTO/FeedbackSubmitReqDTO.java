package com.rohit.demo.DTO;

import java.util.List;

public class FeedbackSubmitReqDTO {
	private int userId;
	private List<FeedbackSubmitAnswerReqDTO> data;
	
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public List<FeedbackSubmitAnswerReqDTO> getData() {
		return data;
	}
	public void setData(List<FeedbackSubmitAnswerReqDTO> data) {
		this.data = data;
	}
	public FeedbackSubmitReqDTO(int userId, List<FeedbackSubmitAnswerReqDTO> data) {
		super();
		this.userId = userId;
		this.data = data;
	}
	@Override
	public String toString() {
		return "FeedbackSubmitReqDTO [userId=" + userId + ", data=" + data + "]";
	}
	
	
	
}
