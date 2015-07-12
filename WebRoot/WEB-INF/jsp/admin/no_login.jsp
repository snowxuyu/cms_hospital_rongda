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
<link href="<%=request.getContextPath() %>/resources/css/index.css" rel="stylesheet" type="text/css" />
<title>迎园医院-志愿者社工平台</title>
</head>

<body>
   <table align="center" width="100%" >
      <tr align="center" >
        <td  align="center"  height="200"><h2><a href="<%=request.getContextPath() %>/admin/login" target="_parent"><span style="color:#7A67EE;font-size:16px;">对不起，您未登录或登录已超时，请点击重新登录！</span></a></h2></td>
      </tr>
   </table>
</body>
</html>