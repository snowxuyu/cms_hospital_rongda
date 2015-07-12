package com.rongda.service;

import java.util.List;

import com.rongda.model.CMS_ZXLM;

public interface ICms_ZxlmService {
	public void addZLGL(CMS_ZXLM zxlm);
	
	public void deleteZLGL(String YWXH);
	
	public void updateZLGL(CMS_ZXLM zxlm);
	public CMS_ZXLM queryLMFL(String LMFL);
	public CMS_ZXLM queryZLGL(String YWXH);
	public CMS_ZXLM queryZLGL2();
	public CMS_ZXLM queryZLGL3();
	public CMS_ZXLM queryZLGL4();
	public CMS_ZXLM queryZLGL5();
	public List<CMS_ZXLM> listZLGL();

}
