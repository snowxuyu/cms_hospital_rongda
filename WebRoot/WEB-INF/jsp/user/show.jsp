<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>显示用户信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<div id="content">
	<table width="800" cellspacing="0" cellPadding="0">
		<thead><tr><td colspan="2">查询用户功能：用户id[${user.id }]</td></tr></thead>
		<tr>
			<td class="rightTd" width="200px">用户名:</td><td class="leftTd">${user.username }&nbsp;</td>
		</tr>
		<tr>
			<td class="rightTd" width="200px">密码:</td><td class="leftTd">${user.password }&nbsp;</td>
		</tr>
		<tr>
			<td class="rightTd">联系电话:</td><td>${user.phone}&nbsp;</td>
		</tr>
	</table>
</div>
</body>
</html>