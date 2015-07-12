package com.rongda.service;

import java.util.List;

import javax.annotation.Resource;


import org.springframework.stereotype.Service;

import com.rongda.dao.ICms_ZxlmDao;
import com.rongda.model.CMS_ZXLM;
@Service("cms_ZxlmService")
public class Cms_ZxlmService implements ICms_ZxlmService {
	private ICms_ZxlmDao cmsZxlmDao;
	
	public ICms_ZxlmDao getZxglDao() {
		return cmsZxlmDao;
	}
	@Resource
	public void setZxglDao(ICms_ZxlmDao zxglDao) {
		this.cmsZxlmDao = zxglDao;
	}

	@Override
	public void addZLGL(CMS_ZXLM zxlm) {
		cmsZxlmDao.addZLGL(zxlm);
	}

	@Override
	public void deleteZLGL(String YWXH) {
		cmsZxlmDao.deleteZLGL(YWXH);
	}

	@Override
	public List<CMS_ZXLM> listZLGL() {
		return cmsZxlmDao.listZLGL();
	}

	@Override
	public CMS_ZXLM queryZLGL(String YWXH) {
		return cmsZxlmDao.queryZLGL(YWXH);
	}

	@Override
	public void updateZLGL(CMS_ZXLM zxlm) {
		cmsZxlmDao.updateZLGL(zxlm);
	}
	@Override
	public CMS_ZXLM queryZLGL2() {
		return cmsZxlmDao.queryZLGL2();
	}
	@Override
	public CMS_ZXLM queryZLGL3() {
		return cmsZxlmDao.queryZLGL3();
	}
	@Override
	public CMS_ZXLM queryZLGL4() {
		return cmsZxlmDao.queryZLGL4();
	}
	@Override
	public CMS_ZXLM queryZLGL5() {
		return cmsZxlmDao.queryZLGL5();
	}
	@Override
	public CMS_ZXLM queryLMFL(String LMFL) {
		return  cmsZxlmDao.queryLMFL(LMFL);
	}
	

}
