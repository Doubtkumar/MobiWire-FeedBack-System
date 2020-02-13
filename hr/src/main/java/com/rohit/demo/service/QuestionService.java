package com.rohit.demo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rohit.demo.DTO.AddAnswerOptionsReqDTO;
import com.rohit.demo.DTO.AddQuestionReqDTO;
import com.rohit.demo.DTO.FeedbackSubmitAnswerReqDTO;
import com.rohit.demo.DTO.FeedbackSubmitReqDTO;
import com.rohit.demo.dao.AddFeedbackRepository;
import com.rohit.demo.dao.QuestionRepository;
import com.rohit.demo.model.AnswersOption;
import com.rohit.demo.model.FeedbackAnswer;
import com.rohit.demo.model.Question;


@Service
public class QuestionService {

	@Autowired
	private QuestionRepository  questionRepository;
	
	
	
	public boolean addQuestion(AddQuestionReqDTO req) {
		
		Question  question=new Question();
		question.setQuestion(req.getQuestion());
		List<AnswersOption> list=new ArrayList<>();
		System.out.println(req.getOptions());
		for(AddAnswerOptionsReqDTO option:req.getOptions()) {
			
			AnswersOption  answersOption =new AnswersOption();
			answersOption.setOptions(option.getOption());
			answersOption.setType(option.getType());
			question.setType(option.getType());
			answersOption.setQuestion(question);
			list.add(answersOption);
			
		}
		question.setOption(list);
		question=questionRepository.save(question);
		return question!=null?true:false;
	}
	
	
	public List<Question> findAll(){
		return questionRepository.findAll();
	}
	
	
	
	
}
