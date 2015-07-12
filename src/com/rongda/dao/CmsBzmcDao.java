package com.rongda.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.rongda.model.CMS_BZMC;
@Service("bzmcDao")
public class CmsBzmcDao implements ICmsBzmcDao {
private SqlSession sqlSession;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}
	@Resource
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	@Override
	public void addBzmc(CMS_BZMC bzmc) {
		sqlSession.insert("com.rongda.model.cmsbzmc.add_bzmc",bzmc);
	}

	@Override
	public void deleteBzmc(String YWXH) {
		sqlSession.delete("com.rongda.model.cmsbzmc.delete_bzmc",YWXH);
	}

	@Override
	public List<CMS_BZMC> listBzmc() {
		List<CMS_BZMC> bzmclist = sqlSession.selectList("com.rongda.model.cmsbzmc.list_bzmc");
		return bzmclist;
	}

	@Override
	public CMS_BZMC queryBzmc(String YWXH) {
		CMS_BZMC bz  = sqlSession.selectOne("com.rongda.model.cmsbzmc.query_bzmc",YWXH);
		return bz;
	}

	@Override
	public void updateBzmc(CMS_BZMC bzmc) {
		sqlSession.update("com.rongda.model.cmsbzmc.update_bzmc",bzmc);
	}

}
