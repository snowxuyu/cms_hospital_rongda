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
    
    <title>修改多项栏目</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" rev="stylesheet" href="resources/admin/css/style.css" type="text/css" media="all" />
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/ckeditor/ckeditor.js"></script> 
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript">
	window.onload = function () {
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

	function check() {
		var lmbt = document.getElementById("lmbt").value;
		var fbr = document.getElementById("fbr").value;
		var fbsj = document.getElementById("fbsjstr").value;
		var form = document.getElementById("fom");
		var context = CKEDITOR.instances.context.getData();
		if (lmbt == "" ) {
			alert("栏目标题不能为空");
			return false;
		}
		if (fbr == "" ) {
			alert("发布人不能为空");
			return false;
		}
		if (fbsj == "" || fbsj == null  ) {
			alert("发布时间不能为空");
			return false;
		}
		if (context == "" || context == null || context ==" " || context =="  ") {
			alert("发布内容不能为空");
			return false;
		}
		form.submit();
		alert("修改成功");
}
	</script>
  </head>
  
  <body class="ContentBody">
  	<sf:form method="post" modelAttribute="dxlm" enctype="multipart/form-data" name="fom" id="fom" target="sypost">
	<div class="MainDiv">
	<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  		<tr>
      		<th class="tablestyle_title" >修改多项栏目页面</th>
  		</tr>
  		<tr>
    		<td class="CPanel">
			<table border="0" cellpadding="0" cellspacing="0" style="width:100%">

			<tr>
				<td width="100%">
					<fieldset style="height:100%;">
					<legend>修改多项栏目</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					 
						  <tr>
						    <td nowrap align="right" width="26%"><div align="left">栏目标题:
						      <input id="lmbt" name="LMBT" class="text" style="width:250px" type="text" size="40" value="${dm.LMBT }" />
						    </div></td>
						    <td width="32%"><span class="red"> *</span></td>
						    <td align="right" width="42%"><div align="left">发布人:
					          <input id="fbr" name="FBR" value="${dm.FBR }" id="Input22" class="text" style="width:154px" />
						    </div></td>
					    </tr>
					  	  <tr>
						    <td nowrap align="right"><div align="left">发布时间:
						      <input id="fbsjstr" name="FBSJSTR" value="${dm.FBSJSTR }"  class="text" style="width:154px" onFocus="WdatePicker({isShowWeek:true})"/>
						    </div></td>
						    <td>&nbsp;</td>
				 	    </tr>
					  	<tr>
						    <td colspan="3">
						    	<textarea id="context" name="LMNR" rows="5" cols="80">${dm.LMNR }</textarea>
						    	<script type="text/javascript">
						    	
						    	</script>
						    </td>
					    </tr>
				</table>
				 <br />
				</fieldset>	
	 </td>
  </tr>
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input type="button" name="Submit" value="保存" class="button" onclick="check()"/>　
			<input type="button" name="Submit2" value="返回" class="button" onClick="window.history.go(-1);"/></TD>
		</TR>
		</TABLE>
	 </td>
  </tr>
  </table>
</div>
</sf:form>
</body>
</html>
