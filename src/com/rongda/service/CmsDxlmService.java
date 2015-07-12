package com.rongda.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rongda.dao.ICmsDxlmDao;
import com.rongda.model.CMS_DXLM;

@Service("cmsDxlmService")
public class CmsDxlmService implements ICmsDxlmService {
	
	private ICmsDxlmDao cmsDxlmDao;
	
	public ICmsDxlmDao getCmsDxlmDao() {
		return cmsDxlmDao;
	}
	@Resource
	public void setCmsDxlmDao(ICmsDxlmDao cmsDxlmDao) {
		this.cmsDxlmDao = cmsDxlmDao;
	}

	@Override
	public void addDxlm(CMS_DXLM dxlm) {
		cmsDxlmDao.addDxlm(dxlm);
	}

	@Override
	public void deleteDxlm(String ywxh) {
		cmsDxlmDao.deleteDxlm(ywxh);
	}

	@Override
	public List<CMS_DXLM> listDxlm() {
		return cmsDxlmDao.listDxlm();
	}

	@Override
	public CMS_DXLM loadDxlm(String ywxh) {
		return cmsDxlmDao.loadDxlm(ywxh);
	}

	@Override
	public void updateDxlm(CMS_DXLM dxlm) {
		cmsDxlmDao.updateDxlm(dxlm);
	}
	@Override
	public void addO(String id) {
		cmsDxlmDao.add(id);
	}
	@Override
	public List<CMS_DXLM> listDxlm(char ch) {
		return cmsDxlmDao.listDxlm(ch);
	}
}
