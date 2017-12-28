package com.niit.Dao;

import java.util.List;

import com.niit.pojo.User;

public interface UserDao {
public void addUser(User user);
public User getUserById(int id);
public List<User> getallUser();
public void updateUser(User user);
public User getUserByUsername(String username);
}
