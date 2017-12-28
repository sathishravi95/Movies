package com.niit.pojo;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Component("movies")
public class Movies {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int  id;
	@NotBlank(message="please enter your moviesname!")
	private String moviesname;
	@NotBlank(message="please enter your moviesdescription!")
	private String moviesdescription;
	private String moviescategory;
	@Min(value=1,message="the price cannot be less than 1!")
	private int moviesprice;
	
	@Transient
    private MultipartFile Image;
	
	

	public MultipartFile getImage() {
		return Image;
	}

	public void setImage(MultipartFile image) {
		Image = image;
	}
	@ManyToOne(fetch = FetchType.EAGER)
	private Category category;
	
	
	public Category getCategory() {
		return category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	

	public int getMoviesprice() {
		return moviesprice;
	}

	public void setMoviesprice(int moviesprice) {
		this.moviesprice = moviesprice;
	}

	public String getMoviesname() {
		return moviesname;
	}

	public void setMoviesname(String moviesname) {
		this.moviesname = moviesname;
	}

	public String getMoviesdescription() {
		return moviesdescription;
	}

	public void setMoviesdescription(String moviesdescription) {
		this.moviesdescription = moviesdescription;
	}

	public String getMoviescategory() {
		return moviescategory;
	}

	public void setMoviescategory(String moviescategory) {
		this.moviescategory = moviescategory;
	}

	

}