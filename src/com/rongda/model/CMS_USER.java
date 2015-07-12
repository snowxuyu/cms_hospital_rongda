package com.rongda.model;

/**
 * 管理员基本信息类
 * @author Administrator
 *
 */
public class CMS_USER {
	private String YWXH; // 业务序号
	private String YHXM; //用户姓名
	private String GLYZH; //管理员账户
	private String GLYMM; //管理员密码
	private char SFKT; // 是否开通   0 否    1 是
	private String KZ1;  //扩展字段 1
	private String KZ2; //扩展字段2
	private String KZ3; //扩展字段3
	public String getYWXH() {
		return YWXH;
	}
	public void setYWXH(String yWXH) {
		YWXH = yWXH;
	}
	public String getYHXM() {
		return YHXM;
	}
	public void setYHXM(String yHXM) {
		YHXM = yHXM;
	}
	public String getGLYZH() {
		return GLYZH;
	}
	public void setGLYZH(String gLYZH) {
		GLYZH = gLYZH;
	}
	public String getGLYMM() {
		return GLYMM;
	}
	public void setGLYMM(String gLYMM) {
		GLYMM = gLYMM;
	}
	public char getSFKT() {
		return SFKT;
	}
	public void setSFKT(char sFKT) {
		SFKT = sFKT;
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
}
