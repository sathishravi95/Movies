package com.niit.Dao;

import java.util.List;

import com.niit.pojo.Movies;




public interface MoviesDao {

	public void addMovies(Movies movies);
    public Movies getMoviesById(int id);
	public List<Movies> getallMovies();
	public void deleteMovies(int id);

	
	
}
