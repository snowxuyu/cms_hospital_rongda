package com.rongda.dao;

import com.rongda.model.CMS_USER;

public interface ICmsUserDao {
	public CMS_USER loadById(String ywbh);
	public CMS_USER loadByUsername(String username);
	public void updateGlyPassword(CMS_USER user);
}
