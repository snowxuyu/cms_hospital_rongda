<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>更新用户基本信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
</script>
</head>
<body>
<div id="content">
	<sf:form method="post" modelAttribute="user" id="addForm">
	<table width="800" cellspacing="0" cellPadding="0">
		<sf:hidden path="id"/>
		<sf:hidden path="password"/>
		<thead><tr><td colspan="2">修改用户-->${user.username}</td></tr></thead>
		<tr>
			<td class="rightTd">显示名称(可以是中文):</td><td class="leftTd"><input name="username" size="30"/></td>
		</tr>
		<tr>
			<td class="rightTd">联系电话:</td><td><input name="phone" size="30"/></td>
		</tr>
	</table>
	<input type="submit" value="更新用户"/> <input type="reset" value="重置"/>
	</sf:form>
</div>
</body>
</html>