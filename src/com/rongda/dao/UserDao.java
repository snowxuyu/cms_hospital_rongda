package com.rongda.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.rongda.model.User;

@Repository("userDao")
public class UserDao implements IUserDao {

	private SqlSession sqlSession;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}
	@Resource
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void addUser(User user) {
		sqlSession.insert("com.rongda.model.user.add_user", user);
	}
	@Override
	public void deleteUser(int id) {
		sqlSession.delete("com.rongda.model.user.delete_user", id);
	}
	@Override
	public List<User> listUser() {
		List<User> userList = sqlSession.selectList("com.rongda.model.user.list_user");
		return userList;
	}
	@Override
	public User loadUser(int id) {
		User u = sqlSession.selectOne("com.rongda.model.user.load_user", id);
		return u;
	}
	@Override
	public void updateUser(User user) {
		sqlSession.update("com.rongda.model.user.update_user", user);
	}
}
