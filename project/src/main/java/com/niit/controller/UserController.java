package com.niit.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.UserDao;
import com.niit.pojo.Address;
import com.niit.pojo.User;

@Controller
public class UserController {
	
	
	@Autowired
	UserDao us;
	@RequestMapping(value = "/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping( value ="/usadd/{id}",method=RequestMethod.POST)
	public String getAddresses(@Valid @ModelAttribute("address") Address address,BindingResult results,  @PathVariable int id,Model model)
	{
		 if(results.hasErrors())
		 {
			 return "Address";
		 }
		 else
		 {
		User user=us.getUserById(id);
		  List<Address> addresses=user.getAddresses();
		  addresses.add(address);
		  user.setAddresses(addresses);
		   us.updateUser(user);
		  return "redirect:/index";
		  
	  }
	}
}
