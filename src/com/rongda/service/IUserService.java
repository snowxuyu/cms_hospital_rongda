package com.rongda.service;

import java.util.List;

import com.rongda.model.User;

public interface IUserService {

	public void addUser(User user);
	
	public void deleteUser(int id);
	
	public void updateUser(User user);
	
	public User loadUser(int id);
	
	public List<User> listUser();
}
