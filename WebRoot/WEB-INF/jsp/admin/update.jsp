<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改密码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" rev="stylesheet" href="resources/admin/css/style.css" type="text/css" media="all" />
	 <script type="text/javascript">  
	   	function check(){ 
	   	  var form = document.getElementById("form");
	   	  var ps1 =document.getElementById("ps1").value;
	   	  var ps2 =document.getElementById("ps2").value;
	   	  var ps3 =document.getElementById("ps3").value;
	   	  var mm=document.getElementById("mm").value;
	      if(ps1 == null||ps1==""){   
	   	 	 alert("原始密码不能为空！");    	
	   	 	 return false;    		
	   	 	}
	   	  if(ps1 !=mm){   
	   	 	 alert("原始密码不正确！");    	
	   	 	 return false;    		
	   	 	}
	   	  if(ps2 == null||ps2==""){ 
	   	     alert("密码不能为空！");    		
	   	     return false;    	
	   	   	}     
	   	  if(ps3 == null||ps3==""){
	   	     alert("请输入确认新密码！");    		
	   	     return false;    		
	   	    }    
	   	  if(ps2 != ps3){  
	   	     alert("两次输入密码不一致！");    			
	   	     return false;    		
	   	  }   
	   	    form.submit();
	   	    alert("修改成功");
	   	  }
	  </script>
  </head>
  
  <body class="ContentBody">
  	<form method="post" action="" id="form">
  	<input type="hidden" name="YWXH"/>
  	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="CContent"> 
  		<tr>
      		<th class="tablestyle_title" >密码修改页面</th>
  		</tr>
  	</table>
  	<table align="center" width="300">
	  	<tr><td><input id="mm" type="hidden" name="OLDMM" value="${user.GLYMM}"/></td></tr>
	  	<tr><td>请输入原始密码:</td>
	  	<td><input type="password" id="ps1" name="OLDGLYMM"/> </td></tr>
	  	<tr><td>请输入新密码:</td>
	  		<td><input type="password"  id="ps2" name="GLYMM"/></td></tr>
	  	<tr><td>确认新密码:</td>
	  		<td><input type="password"  id="ps3" name="CNGLYMM"> </td></tr>
  	
  		<tr>
  			<td >
	    	 <div align="right">
    	        <input  align="right" type ="button" value="确认"  class="button" onClick="check()"/>
              </div>
	    	</td>
	    	<td>
	    	<input type="reset" class="button"/> 
    		</td>
        </tr>
    	</table>
  	</form>
  </body>
</html>
