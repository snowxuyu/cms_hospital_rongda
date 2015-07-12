package com.rongda.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rongda.dao.ICmsBzmcDao;
import com.rongda.model.CMS_BZMC;
@Service("bzmcService")
public class CmsBzmcService implements ICmsBzmcService {
	private ICmsBzmcDao bzmcDao;
	public ICmsBzmcDao getBzmcDao() {
		return bzmcDao;
	}
	@Resource
	public void setBzmcDao(ICmsBzmcDao bzmcDao) {
		this.bzmcDao = bzmcDao;
	}

	@Override
	public void addBzmc(CMS_BZMC bzmc) {
		bzmcDao.addBzmc(bzmc);

	}

	@Override
	public void deleteBzmc(String YWXH) {
		bzmcDao.deleteBzmc(YWXH);
	}

	@Override
	public List<CMS_BZMC> listBzmc() {
		return bzmcDao.listBzmc();
	}

	@Override
	public CMS_BZMC queryBzmc(String YWXH) {
		return bzmcDao.queryBzmc(YWXH);
	}

	@Override
	public void updateBzmc(CMS_BZMC bzmc) {
		bzmcDao.updateBzmc(bzmc);
	}

}
