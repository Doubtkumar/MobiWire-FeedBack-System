package com.rohit.demo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.rohit.demo.DTO.FeedbackSubmitReqDTO;
import com.rohit.demo.dao.AddFeedbackRepository;
import com.rohit.demo.service.FeedbackService;

@Controller
public class FeedbackController {
	
	@Autowired
	FeedbackService feedbackService;
	
	@Autowired
	AddFeedbackRepository repo;
	
	@RequestMapping("feedbackSubmit")
	public ModelAndView addFeedback(@ModelAttribute FeedbackSubmitReqDTO req, @RequestParam int userId) {
		System.out.println(req.toString());
		System.out.println(userId);
		long delete=repo.deleteByUserId(userId);
		System.out.println(delete);
		feedbackService.addFeedback(req);
		
		return new ModelAndView("thankyou.jsp");
	}
		
}
