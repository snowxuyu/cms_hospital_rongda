<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>用户列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	
</script>
</head>
<body>
<div id="content">
	<table width="800" cellspacing="0" cellPadding="0" id="listTable">
		<thead>
		<tr>
			<td>用户标识</td>
			<td>用户名称</td>
			<td>联系电话</td>
			<td>用户操作</td>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${users }" var="user">
			<tr>
				<td>${user.id }&nbsp;</td>
				<td><a href="${user.id }" class="list_link">${user.username }</a></td>
				<td>
					${user.phone }
					&nbsp;
				</td>
				<td>
					<a href="delete/${user.id }">删除</a>
					<a href="update/${user.id }">更新</a>
				</td>
			</tr>
		</c:forEach>
		<a href="add">新增用户</a>
		</tbody>
	</table>
</div>
</body>
</html>