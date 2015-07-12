package com.rongda.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.rongda.model.CMS_DXLM;

@Repository("cmsDxlmDao")
public class CmsDxlmDao implements ICmsDxlmDao {
	
	private SqlSession sqlSession;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}
	@Resource
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void addDxlm(CMS_DXLM dxlm) {
		sqlSession.insert("com.rongda.model.cmsDxlm.add_dxlm", dxlm);
	}

	@Override
	public void deleteDxlm(String ywxh) {
		sqlSession.delete("com.rongda.model.cmsDxlm.delete_dxlm", ywxh);
	}

	@Override
	public List<CMS_DXLM> listDxlm() {
		return sqlSession.selectList("com.rongda.model.cmsDxlm.list_dxlm");
	}

	@Override
	public CMS_DXLM loadDxlm(String ywxh) {
		return sqlSession.selectOne("com.rongda.model.cmsDxlm.load_dxlm", ywxh);
	}

	@Override
	public void updateDxlm(CMS_DXLM dxlm) {
		sqlSession.update("com.rongda.model.cmsDxlm.update_dxlm", dxlm);
	}
	@Override
	public void add(String id) {
		sqlSession.insert("com.rongda.model.cmsDxlm.add_dxlm", id);
		
	}
	@Override
	public List<CMS_DXLM> listDxlm(char LMFL) {
		return sqlSession.selectList("listByFL_dxlm", LMFL);
	}

}
