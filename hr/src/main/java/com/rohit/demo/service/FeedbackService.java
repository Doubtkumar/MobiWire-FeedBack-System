package com.rohit.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rohit.demo.DTO.FeedbackSubmitAnswerReqDTO;
import com.rohit.demo.DTO.FeedbackSubmitReqDTO;
import com.rohit.demo.dao.AddFeedbackRepository;
import com.rohit.demo.model.FeedbackAnswer;

@Service
public class FeedbackService {
	
	@Autowired
	private AddFeedbackRepository addFeedbackRepositiry;
	
	public void addFeedback(FeedbackSubmitReqDTO req1) {
		for(FeedbackSubmitAnswerReqDTO action :req1.getData()) {
			FeedbackAnswer answer= new FeedbackAnswer();
			answer.setUserId(req1.getUserId());
			answer.setAnswer(action.getAnswer());
			answer.setQuestionId(action.getQuestionid());
			answer.setQuestion(action.getQuestion());
			addFeedbackRepositiry.save(answer);
		}
		
		
	}
}
