package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.CategoryDao;
import com.niit.pojo.Category;
@Controller
public class CategoryController {
	@Autowired
	private CategoryDao categoryDao;
	@RequestMapping(value="/category")
	   public String getProductPage(@ModelAttribute("category") Category category,Model model)
	   {
		 model.addAttribute("categories",categoryDao.getAllCategory());
		 return "category";  
	   }
	 @RequestMapping(value="/addCategory", method=RequestMethod.POST)
	   public String getAddProductPage(@ModelAttribute("category")Category category)
	   {
		 categoryDao.addCategory(category);
		 return "redirect:/category";
	  }
	 @RequestMapping(value = "/deletecategory/{id}")
		public String deleteCategory(@PathVariable int id) {
			categoryDao.deleteCategory(id);
			return "redirect:/category";
		}

		@RequestMapping(value = "/editcategory/{id}")
		public ModelAndView edit(@PathVariable int id) {
			ModelAndView mv = new ModelAndView("category");
			mv.addObject("category", categoryDao.getCategoryById(id));
			return mv;

		}

}
