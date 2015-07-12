<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加用户</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <sf:form modelAttribute="user" method="post">
    	<tr>
    		<td>用户名:</td>
    		<td>
    			<input type="text" id="username" name="username"/>
    		</td>
    	</tr> <br/>
    	<tr>
    		<td>密码:</td>
    		<td>
    			<input type="password" id="password" name="password"/>
    		</td>
    	</tr> <br/>
    	<tr>
    		<td>联系电话:</td>
    		<td>
    			<input type="text" id="phone" name="phone"/>
    		</td>
    	</tr>  <br/>
    	
    	<input type="submit" value="添加用户"/> <input type="reset" value="重置"/>
    </sf:form>
  </body>
</html>
