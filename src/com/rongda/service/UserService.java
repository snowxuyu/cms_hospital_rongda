package com.rongda.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rongda.dao.IUserDao;
import com.rongda.model.User;

@Service("userService")
public class UserService implements IUserService {
	
	private IUserDao userDao;
	
	public IUserDao getUserDao() {
		return userDao;
	}
	@Resource
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public void addUser(User user) {
		userDao.addUser(user);
	}

	@Override
	public void deleteUser(int id) {
		userDao.deleteUser(id);
	}

	@Override
	public List<User> listUser() {
		return userDao.listUser();
	}

	@Override
	public User loadUser(int id) {
		return userDao.loadUser(id);
	}

	@Override
	public void updateUser(User user) {
		userDao.updateUser(user);
	}

}
