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
    
    <title>修改名单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" rev="stylesheet" href="resources/admin/css/style.css" type="text/css" media="all" />
	<script type="text/javascript" src="resources/fckeditor/fckeditor.js"></script> 
	<script type="text/javascript" src="resources/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript">
	function check(){
		var form= document.getElementById("fom");
		var na= document.getElementById("name").value;
		var dw= document.getElementById("dw").value;
        var dj= document.getElementById("dj").value;
		if(na == "" || na == null){
			alert("姓名不能为空");
			return false;
		}
		if(dw == "" || dw == null){
			alert("单位不能为空");
			return false;
		}
		if(dj == "" || dj == null){
			alert("等级不能为空");
			return false;
		}
		 form.submit();
		 
	}
	</script>
  </head>
  
  <body class="ContentBody">
  	<sf:form method="post" modelAttribute="bzmc" enctype="multipart/form-data" name="fom" id="fom" target="sypost">
	<div class="MainDiv">
	<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  		<tr>
      		<th class="tablestyle_title" >修改名单页面</th>
  		</tr>
  		<tr>
    		<td class="CPanel">
			<table border="0" cellpadding="0" cellspacing="0" style="width:100%">

			<tr>
				<td width="100%">
					<fieldset style="height:100%;">
					<legend>修改名单</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					 
						  <tr>
						    <td nowrap align="right" width="13%">姓名:</td>
						    <td width="43%"><input id="name" name="XM" class="text" style="width:154px" type="text" value="${bz.XM }" />
					        <span class="red"> *</span></td>
						    <td align="right" width="17%">单位:${bz.DW }</td>
						    <td width="27%"><input id="dw" name="DW" value="${bz.DW }" id="Input22" class="text" style="width:154px" />
						    <span class="red"> *</span></td>
						  </tr>
					  	  <tr>
						    <td nowrap align="right">等级:</td>
						    <td>
						    	<input id="dj" name="DJ" value="${bz.DJ}"  class="text" style="width:154px" />
						    <span class="red"> *</span></td>
					 	 </tr>
				</table>
				 <br />
				</fieldset>	
	 </td>
  </tr>
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input type="button" name="Submit" value="保存" class="button" onclick="check()"/>　
			<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/></TD>
		</TR>
		</TABLE>
	 </td>
  </tr>
  </table>
</div>
</sf:form>
</body>
</html>
