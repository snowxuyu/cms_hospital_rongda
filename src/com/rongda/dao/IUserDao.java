package com.rongda.dao;

import java.util.List;

import com.rongda.model.User;

public interface IUserDao {
	
	public void addUser(User user);
	
	public void deleteUser(int id);
	
	public void updateUser(User user);
	
	public User loadUser(int id);
	
	public List<User> listUser();
}