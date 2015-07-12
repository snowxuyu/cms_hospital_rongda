package com.rongda.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rongda.dao.ICmsUserDao;
import com.rongda.model.CMS_USER;

@Service("cmsUserService")
public class CmsUserService implements ICmsUserService {
	
	private ICmsUserDao cmsUserDao;
	
	public ICmsUserDao getCmsUserDao() {
		return cmsUserDao;
	}
	@Resource
	public void setCmsUserDao(ICmsUserDao cmsUserDao) {
		this.cmsUserDao = cmsUserDao;
	}



	@Override
	public void updateGlyPassword(CMS_USER user) {
		cmsUserDao.updateGlyPassword(user);
	}
	@Override
	public CMS_USER loadById(String ywbh) {
		return cmsUserDao.loadById(ywbh);
	}
	@Override
	public CMS_USER loadByUsername(String username) {
		return cmsUserDao.loadByUsername(username);
	}
	
	

}
