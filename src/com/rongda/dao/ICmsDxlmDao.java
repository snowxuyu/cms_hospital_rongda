package com.rongda.dao;

import java.util.List;

import com.rongda.model.CMS_DXLM;

public interface ICmsDxlmDao {
	public void addDxlm(CMS_DXLM dxlm);
	public void add(String id);
	public void deleteDxlm(String ywxh);
	public void updateDxlm(CMS_DXLM dxlm);
	public CMS_DXLM loadDxlm(String ywxh);
	public List<CMS_DXLM> listDxlm();
	public List<CMS_DXLM> listDxlm(char ch);
}
