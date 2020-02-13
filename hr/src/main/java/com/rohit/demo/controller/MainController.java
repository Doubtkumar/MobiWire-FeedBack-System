package com.rohit.demo.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import com.rohit.demo.dao.AdminRepo;
import com.rohit.demo.dao.AnswersOptionRepository;
import com.rohit.demo.dao.Crud;
import com.rohit.demo.dao.QuestionRepository;
import com.rohit.demo.model.User;

@RestController
public class MainController {
	
	@Autowired
	Crud repo;

	
	@Autowired
	AdminRepo repo1;
	
	@Autowired
	private QuestionRepository  questions;
	
	
	@RequestMapping("/home")
	public ModelAndView add() {
		return new ModelAndView("user.jsp");
	}
	
	@RequestMapping("/log")
	public ModelAndView log() {
		return new ModelAndView("login.jsp");
	}
	
	@RequestMapping("/toAdmin")
	public ModelAndView toAdmin() {
		return new ModelAndView("adminLogin.jsp");
	}
	
	@RequestMapping("/add")
	public ModelAndView add(User user,@RequestParam("username") String username, Model model) {
		if(repo.findByUsername(username)!=null) {
			model.addAttribute("err", "User is already Exist");
			return new ModelAndView("user.jsp");
		}
		else {
			repo.save(user);
			return new ModelAndView("user.jsp");
		}
			
	}
		
		
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam("username") String user, @RequestParam("password") String pass, Model model) throws IOException {
		if(repo.findByUsernameAndPassword(user, pass)!=null) {
			model.addAttribute("user",repo.findByUsernameAndPassword(user, pass));
			model.addAttribute("question",questions.findAll());
			return new ModelAndView("welcome.jsp");
		}
		
		else {
			model.addAttribute("error","invalid username or password");
			return new ModelAndView("login.jsp");
		}
		
	}

	@RequestMapping("/toAdminLogin")
	public ModelAndView toAdmin(HttpServletRequest request,HttpServletResponse response,@RequestParam("user") String user, @RequestParam("pass") String pass, Model model) throws IOException {
		if(repo1.findByUserAndPass(user, pass)!=null) {
			HttpSession session= request.getSession();
			model.addAttribute("user", repo1.findByUserAndPass(user, pass));
			model.addAttribute("q", repo1.findAll());
			
			model.addAttribute("username",repo.findAll());
			return new ModelAndView("welcomeAdmin.jsp");
		}
		else {
			System.out.println("admin failed");
			model.addAttribute("error","invalid username or password");
			
		}
		return new ModelAndView("adminLogin.jsp");
	}
	
	@RequestMapping("/userFeedback")
	public ModelAndView toFeedback() {
		return new ModelAndView("userFeedback.jsp");
	}
	
	
	
}