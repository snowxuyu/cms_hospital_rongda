package com.rongda.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.rongda.model.CMS_USER;

@Repository("cmsUserDao")
public class CmsUserDao implements ICmsUserDao {

	private SqlSession sqlSession;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}
	@Resource
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void updateGlyPassword(CMS_USER user) {
		sqlSession.update("com.rongda.model.cmsuser.update_usermm", user);
	}
	
	@Override
	public CMS_USER loadById(String ywbh) {
		return sqlSession.selectOne("com.rongda.model.cmsuser.load_userById", ywbh);
	}
	@Override
	public CMS_USER loadByUsername(String username) {
		return sqlSession.selectOne("com.rongda.model.cmsuser.load_userByUsername", username);
	}

}
