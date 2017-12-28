package com.niit.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.niit.Dao.UserDao;
import com.niit.pojo.Address;

import com.niit.pojo.User;


@Controller
public class HomeController {

	
	@Autowired
	UserDao us;


	public HomeController() {

		System.out.println("HelloController GETS INTANTIATED");
	}

	@RequestMapping(value = { "/", "/index" })
	public String index() {
		return "index";
	}
	
	@RequestMapping("/aboutus")
	public String aboutus() {

		return "aboutus";
	}

	@RequestMapping(value = "/register")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView("register");
		mv.addObject("user", new User());
		return mv;
	}
	

	

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String getuser(@Valid @ModelAttribute("user") User user,BindingResult results, Model model) {
		if(results.hasErrors()){
		return "register";
		}
		else
		{
			System.out.println("fname" + user.getFname());
			System.out.println("lname" + user.getLname());
			System.out.println("email" + user.getEmail());
			System.out.println("phone number" + user.getPhonenumber());
			System.out.print("password" + user.getPassword());
			user.setRole("ROLE_USER");
			user.setEnabled(true);
			us.addUser(user);
			model.addAttribute("user",user);
		model.addAttribute("address",new Address());
		return "Address";
	}}
	}

