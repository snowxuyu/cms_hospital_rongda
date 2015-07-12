package com.rongda.service;

import java.util.List;

import com.rongda.model.CMS_BZMC;

public interface ICmsBzmcService {
	public void addBzmc(CMS_BZMC bzmc);
	public void deleteBzmc(String YWXH);
	public void updateBzmc(CMS_BZMC bzmc);
	public CMS_BZMC queryBzmc(String YWXH);
	public List<CMS_BZMC> listBzmc();
}
