package com.rongda.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.rongda.model.CMS_ZXLM;

@Repository("cmsZxlmDao")
public class Cms_ZxlmDao implements ICms_ZxlmDao {
	private SqlSession sqlSession;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}
	@Resource
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	@Override
	public void addZLGL(CMS_ZXLM zxlm) {
		sqlSession.insert("com.rongda.model.Cms_Zxlm.add_zlgl", zxlm);
		
	}
	@Override
	public void deleteZLGL(String YWXH) {
		sqlSession.delete("com.rongda.model.Cms_Zxlm.delete_zlgl",YWXH);
		
	}
	@Override
	public List<CMS_ZXLM> listZLGL() {
		List<CMS_ZXLM> zlglList = sqlSession.selectList("com.rongda.model.Cms_Zxlm.list_zlgl");
		return zlglList;
	}
	@Override
	public CMS_ZXLM queryZLGL(String YWXH) {
		CMS_ZXLM zl = sqlSession.selectOne("com.rongda.model.Cms_Zxlm.query_zlgl", YWXH);
		return zl;
	}
	@Override
	public void updateZLGL(CMS_ZXLM zxlm) {
		sqlSession.update("com.rongda.model.Cms_Zxlm.update_zlgl",zxlm);		
	}
	@Override
	public CMS_ZXLM queryZLGL2() {
		CMS_ZXLM cj = sqlSession.selectOne("com.rongda.model.Cms_Zxlm.query_zlgl2");
		return cj;
	}
	@Override
	public CMS_ZXLM queryZLGL3() {
		CMS_ZXLM cj2 = sqlSession.selectOne("com.rongda.model.Cms_Zxlm.query_zlgl3");
		return cj2;
	}
	@Override
	public CMS_ZXLM queryZLGL4() {
		CMS_ZXLM cj3 = sqlSession.selectOne("com.rongda.model.Cms_Zxlm.query_zlgl4");
		return cj3;
	}
	@Override
	public CMS_ZXLM queryZLGL5() {
		CMS_ZXLM cj4 = sqlSession.selectOne("com.rongda.model.Cms_Zxlm.query_zlgl5");
		return cj4;
	}
	@Override
	public CMS_ZXLM queryLMFL(String LMFL) {
		CMS_ZXLM cj5 = sqlSession.selectOne("com.rongda.model.Cms_Zxlm.query_lmfl", LMFL);
		return cj5;
	}

	
}
