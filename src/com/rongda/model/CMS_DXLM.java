package com.rongda.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 多项栏目类
 * @author Administrator
 *
 */
/**
 * @author Administrator
 *
 */
public class CMS_DXLM {
	private String YWXH;  //业务序号
	private char LMFL;    // 栏目分类
	private String LMBT;  //栏目标题
	private String LMNR;  //栏目内容
	private Date FBSJ;  //发生时间
	private String FBR;   //发布人
	private String KZ1;   //扩展字段1
	private String KZ2;   //扩展字段2
	private String KZ3;   //扩展字段3
	private Date CJSJ;   //创建时间
	private String CJR;  //创建人
	private Date XGSJ;   //修改时间
	private String XGR;  //修改人
	private char ZT;  //状态
	private String FBSJSTR;
	
	private int BH;
	
	private List<Integer> px;

	public CMS_DXLM(String yWXH, char lMFL, String lMBT, String lMNR,
			Date fBSJ, String fBR, String kZ1, String kZ2, String kZ3,
			Date cJSJ, String cJR, Date xGSJ, String xGR, char zT,
			String fBSJSTR, int bH, List<Integer> px) {
		super();
		YWXH = yWXH;
		LMFL = lMFL;
		LMBT = lMBT;
		LMNR = lMNR;
		FBSJ = fBSJ;
		FBR = fBR;
		KZ1 = kZ1;
		KZ2 = kZ2;
		KZ3 = kZ3;
		CJSJ = cJSJ;
		CJR = cJR;
		XGSJ = xGSJ;
		XGR = xGR;
		ZT = zT;
		FBSJSTR = fBSJSTR;
		BH = bH;
		this.px = sort();
	}

	public CMS_DXLM() {
		super();
	}

	public String getYWXH() {
		return YWXH;
	}

	public void setYWXH(String yWXH) {
		YWXH = yWXH;
	}

	public char getLMFL() {
		return LMFL;
	}

	public void setLMFL(char lMFL) {
		LMFL = lMFL;
	}

	public String getLMBT() {
		return LMBT;
	}

	public void setLMBT(String lMBT) {
		LMBT = lMBT;
	}

	public String getLMNR() {
		return LMNR;
	}

	public void setLMNR(String lMNR) {
		LMNR = lMNR;
	}

	public Date getFBSJ() {
		return FBSJ;
	}

	public void setFBSJ(Date fBSJ) {
		FBSJ = fBSJ;
	}

	public String getFBR() {
		return FBR;
	}

	public void setFBR(String fBR) {
		FBR = fBR;
	}

	public String getKZ1() {
		return KZ1;
	}

	public void setKZ1(String kZ1) {
		KZ1 = kZ1;
	}

	public String getKZ2() {
		return KZ2;
	}

	public void setKZ2(String kZ2) {
		KZ2 = kZ2;
	}

	public String getKZ3() {
		return KZ3;
	}

	public void setKZ3(String kZ3) {
		KZ3 = kZ3;
	}

	public Date getCJSJ() {
		return CJSJ;
	}

	public void setCJSJ(Date cJSJ) {
		CJSJ = cJSJ;
	}

	public String getCJR() {
		return CJR;
	}

	public void setCJR(String cJR) {
		CJR = cJR;
	}

	public Date getXGSJ() {
		return XGSJ;
	}

	public void setXGSJ(Date xGSJ) {
		XGSJ = xGSJ;
	}

	public String getXGR() {
		return XGR;
	}

	public void setXGR(String xGR) {
		XGR = xGR;
	}

	public char getZT() {
		return ZT;
	}

	public void setZT(char zT) {
		ZT = zT;
	}

	public String getFBSJSTR() {
		return FBSJSTR;
	}

	public void setFBSJSTR(String fBSJSTR) {
		FBSJSTR = fBSJSTR;
	}

	public int getBH() {
		return BH;
	}

	public void setBH(int bH) {
		BH = bH;
	}

	public List<Integer> getPx() {
		return px;
	}

	public void setPx(List<Integer> px) {
		this.px = px;
	}
	
	private List<Integer> sort()
	{
		List<Integer> px2 = new ArrayList<Integer>();
		for (int i=0; i<99999; i++)
		{
			px2.add(i);
		}
		return px2;
	}
}
