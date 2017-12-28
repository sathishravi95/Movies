package com.niit.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.catalina.connector.Request;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.CategoryDao;
import com.niit.Dao.MoviesDao;
import com.niit.pojo.Category;
import com.niit.pojo.Movies;

@Controller
public class MoviesController {
    @Autowired
    private CategoryDao categoryDao;
	@Autowired
	private MoviesDao moviesDao;
	@Autowired
	HttpSession session;
	@Autowired
	HttpServletRequest request;
	@Autowired
	Movies movies;

	@RequestMapping("/Movies")
	public String getProductPage(Model model) {
		model.addAttribute("categories",categoryDao.getAllCategory());
		model.addAttribute("movie", new Movies());
		model.addAttribute("movies", moviesDao.getallMovies());
		
		return "Movies";
	}
        
	@RequestMapping(value = "/category",method = RequestMethod.POST)
	public String movies(@ModelAttribute("category") Category category,Model model){
		        model.addAttribute("category", category);
		        List<Category> categories=categoryDao.getAllCategory();
		        categoryDao.addCategory(category);
		        return "redirect:/Movies";
	}
	
	@RequestMapping(value = "/addMovies",method = RequestMethod.POST)
	public String getAddProductPage(@ModelAttribute("movie") @Valid Movies movie, BindingResult results) {
if (results.hasErrors()) {
			return "Movies";
		} else {
			moviesDao.addMovies(movie);
			movies = movie;

			return "upload";
		}
	}

	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	public String uploadImage(@RequestParam MultipartFile image, Model model) {
		if (image == null) {
			System.out.println("Image is null");
			model.addAttribute("movie", movies);
			return "upload";
		}

		System.out.println("Movies Bean:" + movies.getMoviesname());
		System.out.println("Movies in method scope:" + movies.getMoviesname());
		String imagepath = request.getServletContext().getRealPath("/resources/images");
		System.out.println("Directory:" + imagepath);
		Path path = Paths.get(imagepath + File.separator + movies.getMoviesname() + ".jpg");
		System.out.println("Path:" + path.toString());
		try {
			image.transferTo(new File(path.toString()));

		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		model.addAttribute("categoryList",this.categoryDao.getAllCategory());
		 model.addAttribute("movie",this.moviesDao.getallMovies());
		return "redirect:/Movies";

	}

	@RequestMapping(value = "/deletemov/{id}")
	public String deleteMovies(@PathVariable int id) {
		moviesDao.deleteMovies(id);
		return "redirect:/Movies";
	}

	@RequestMapping(value = "/editmov/{id}")
	public ModelAndView edit(@PathVariable int id) {
		ModelAndView mv = new ModelAndView("Movies");
		mv.addObject("movie", moviesDao.getMoviesById(id));
		return mv;

	}

}
