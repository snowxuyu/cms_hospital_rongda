<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${zxlm.LMBT}</title>
<link href="<%=request.getContextPath() %>/resources/css/index.css" rel="stylesheet" type="text/css" />
</head>

<body>
<!--headerTOP-->
<div class="headerTop">
	<img class="logo01" src="<%=request.getContextPath() %>/resources/images/hospitalLogo.png" />
    <img class="logo02" src="<%=request.getContextPath() %>/resources/images/volunteersLogo.png"  />
    <div class="glyBox">    	
       <a href="<%=request.getContextPath() %>/admin/login">管理员入口</a>
    </div>
</div>
<!--nav-->
<div class="navBox">
	<ul class="nav">
    	<li><a href="<%=request.getContextPath() %>/cmsIndex/index">首页</a></li>
        <li><a href="<%=request.getContextPath() %>/zxlm/query2" >社工部简介</a></li>
        <li><a href="<%=request.getContextPath() %>/zxlm/query3">制度建设</a></li>
        <li><a href="<%=request.getContextPath() %>/cmsdxlm/qtlist/A">工作动态</a></li>
        <li><a href="#">时间银行</a></li>
        <li><a href="<%=request.getContextPath() %>/zxlm/query4">培训资料</a></li>
        <li><a href="<%=request.getContextPath() %>/zxlm/query5">义工招募</a></li>
        <li><a href="<%=request.getContextPath() %>/cmsdxlm/qtlist/B">个案记录</a></li>
        <li><a href="<%=request.getContextPath() %>/cmsdxlm/qtlist/C">小组记录</a></li>
    </ul>
</div>

<!--container-->
<div class="containerBox containerBox001">
	<p class="title">${zxlm.LMBT}</p>
    <div class="titleBox">
    	<p>${zxlm.LMNR}</p>   
    </div>
</div>
<!--页脚-->
<div class="footer footerTop">Copyright©2014-2020 嘉定区迎园医院  版权所有 ©技术支持 上海融达信息科技有限公司</div>
</body>
</html>
