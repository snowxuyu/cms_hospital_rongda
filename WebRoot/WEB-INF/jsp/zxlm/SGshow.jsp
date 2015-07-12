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
    
    <title>${zl.LMBT}</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" rev="stylesheet" href="<%=request.getContextPath() %>/resources/admin/css/style.css" type="text/css" media="all" />
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/ckeditor/ckeditor.js"></script> 
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript">
	window.onload = function() {
		CKEDITOR.replace("LMNR"
	   			, { toolbar :[
	   				['Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript'],
	   				['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent'],
	   				['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'],
	   				['Link', 'Unlink', 'Anchor'],
	   				['Maximize', 'ShowBlocks', '-'],
	   				['Image', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar'],'/',
	   				['Styles', 'Format', 'Font', 'FontSize'],
	   				['TextColor', 'BGColor']]
	   			, width : "auto", height : "200px"
	   				,filebrowserImageUploadUrl : '<%=basePath%>/ckeditor/uploader?Type=Image'}
	   			);
	}
	function check(){
		var form= document.getElementById("form");
		var bt= document.getElementById("bt").value;
        var nt=CKEDITOR.instances.context.getData(); 
		if(bt == "" || bt == null){
			alert("栏目标题不能可为空");
			return false;
		}
		if(nt == "" || nt == null || nt ==" " || nt =="  "){
			alert("栏目内容不能为空");
			return false;
		}
		 form.submit();
		 alert("修改成功"); 
	}
	</script>
	    <style type="text/css">
<!--
.STYLE1 {
	font-size: 12px
}
-->
    </style>
  </head>
  
  <body class="ContentBody">
  		<form method="post" action="" id="form" >
	<div class="MainDiv">
	<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  		<tr>
      		<th class="tablestyle_title" >${zl.LMBT}页面</th>
  		</tr>
  		<tr>
    		<td class="CPanel">
			<table border="0" cellpadding="0" cellspacing="0" style="width:100%">

			<tr>
				<td width="100%">
					<fieldset style="height:100%;">
					<legend>${zxlm.LMBT}</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					 
						  <tr>
						    <td nowrap align="center" width="6%"  style="font-size: 20px">栏目标题:
						    <input name="LMBT" id="bt" class="text" style="width:250px;font-size: 13px" type="text" size="40" value="${zl.LMBT}" />
						  <span class="red STYLE1 STYLE1">*</span></td>
						  </tr>
					  	  <tr>
						     <td nowrap align="left"  style="font-size: 20px">栏目内容:</td>
						  </tr>
						  <tr>
						    <td><textarea id="context"  name="LMNR" rows="5" cols="150" >${zl.LMNR }</textarea></td>

					 	 </tr>
				</table>
				 <br />
				</fieldset>	
	 </td>
  </tr>
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input type="button" name="Submit1" value="保存" class="button" onclick="check()"/>　
			<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/></TD>
		</TR>
		</TABLE>
	 </td>
  </tr>
  </table>
</div>
</form>
</body>
</html>
