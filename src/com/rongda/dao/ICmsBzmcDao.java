package com.rongda.dao;

import com.rongda.model.CMS_BZMC;
import java.util.List;
public interface ICmsBzmcDao {
	public void addBzmc(CMS_BZMC bzmc);
	public void deleteBzmc(String YWXH);
	public void updateBzmc(CMS_BZMC bzmc);
	public CMS_BZMC queryBzmc(String YWXH);
	public List<CMS_BZMC> listBzmc();
	
}
