package com.niit.Dao;

import java.util.List;

import com.niit.pojo.Category;
import com.niit.pojo.Movies;

public interface CategoryDao {
	
	public void addCategory(Category category);
	public Category getCategoryById(int id);
	public List getAllCategory();
	public void deleteCategory(int id);
}
