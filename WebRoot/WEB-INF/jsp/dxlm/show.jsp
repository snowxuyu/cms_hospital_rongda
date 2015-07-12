<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>详细展示</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="<%=request.getContextPath() %>/resources/css/index.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
  <div style="text-align: center;">
  <div class="containerBox containerBox001" style="text-align: justify;">
	<p class="title">${dxlm.LMBT }</p>
	<div align="center"><fmt:formatDate value="${dxlm.FBSJ }" type="date"/></div>
    <div class="titleBox">
    	${dxlm.LMNR }
    </div>
    <div align="center" >
    <input type="button" name="Submit2" value="返回" class="button" onClick="window.history.go(-1);"/></TD>
    </div>
    
</div>
  </div>
	<div class="footer footerTop">Copyright©2014-2020 嘉定区迎园医院  版权所有 ©技术支持 上海融达信息科技有限公司</div>
  </body>
</html>
