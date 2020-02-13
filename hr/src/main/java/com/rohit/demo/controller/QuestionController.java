package com.rohit.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.rohit.demo.DTO.AddAnswerOptionsReqDTO;
import com.rohit.demo.DTO.AddQuestionReqDTO;
import com.rohit.demo.service.QuestionService;

@Controller
public class QuestionController {
	
	@Autowired
	private QuestionService questionService;
	
	@RequestMapping("/questionPage")
	public ModelAndView addQuestion() {
		 return new ModelAndView("AddQuestion.jsp");
		
	}
	
	@RequestMapping("/welcome2")
	public ModelAndView welcome2(Model model) {
		model.addAttribute("question",questionService.findAll());
		 return new ModelAndView("welcome2.jsp");
		
	}
	
	
	@RequestMapping("/addQuestion")
	public ModelAndView AddQuestion(@ModelAttribute AddQuestionReqDTO req) {
		
		questionService.addQuestion(req);
		return new ModelAndView("AddQuestion.jsp");
		
	}
	
	
	
}
