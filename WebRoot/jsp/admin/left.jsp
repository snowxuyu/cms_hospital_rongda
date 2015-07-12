<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员登陆</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		<!--
		body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
			background-image: url(resources/admin/images/left.gif);
		}
		-->
	</style>
	<link href="resources/admin/css/css.css" rel="stylesheet" type="text/css" />
	
	<SCRIPT language=JavaScript>
	function tupian(idt){
	    var nametu="xiaotu"+idt;
	    var tp = document.getElementById(nametu);
	    tp.src="resources/admin/images/ico05.gif";//图片ico04为白色的正方形
		
		for(var i=1;i<30;i++)
		{
		  
		  var nametu2="xiaotu"+i;
		  if(i!=idt*1)
		  {
		    var tp2=document.getElementById('xiaotu'+i);
			if(tp2!=undefined)
		    {tp2.src="resources/admin/images/ico06.gif";}//图片ico06为蓝色的正方形
		  }
		}
	}
	
	function list(idstr){
		var name1="subtree"+idstr;
		var name2="img"+idstr;
		var objectobj=document.all(name1);
		var imgobj=document.all(name2);
		
		
		//alert(imgobj);
		
		if(objectobj.style.display=="none"){
			for(i=1;i<10;i++){
				var name3="img"+i;
				var name="subtree"+i;
				var o=document.all(name);
				if(o!=undefined){
					o.style.display="none";
					var image=document.all(name3);
					//alert(image);
					image.src="resources/admin/images/ico04.gif";
				}
			}
			objectobj.style.display="";
			imgobj.src="resources/admin/images/ico03.gif";
		}
		else{
			objectobj.style.display="none";
			imgobj.src="resources/admin/images/ico04.gif";
		}
	}
</SCRIPT>
  </head>
  
 <body  onLoad="list('8');">
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="resources/admin/images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="resources/admin/images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" style="font-size: 12px;color: #448CCB;" >您好，${USER_KEY.YHXM}</td>
				  </tr>
				  <tr>
					<td height="22" >
						[&nbsp;<a href="admin/login" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
		


		<!--  任务系统开始    -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img8" id="img8" src="resources/admin/images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('8');" >菜单管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree8" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu20" src="resources/admin/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="zxlm/update/A" target="mainFrame" class="left-font03" onClick="tupian('20');">社工简介</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu21" src="resources/admin/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="zxlm/update/B" target="mainFrame" class="left-font03" onClick="tupian('21');">制度建设</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu21" src="resources/admin/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="zxlm/update/C" target="mainFrame" class="left-font03" onClick="tupian('21');">培训资料</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu21" src="resources/admin/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="zxlm/update/D" target="mainFrame" class="left-font03" onClick="tupian('21');">社工招募</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu21" src="resources/admin/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="cmsdxlm/lmList/A" target="mainFrame" class="left-font03" onClick="tupian('21');">工作动态</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu21" src="resources/admin/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="cmsdxlm/lmList/B" target="mainFrame" class="left-font03" onClick="tupian('21');">个案记录</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu21" src="resources/admin/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="cmsdxlm/lmList/C" target="mainFrame" class="left-font03" onClick="tupian('21');">小组记录</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu21" src="resources/admin/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="CmsBzmc/bzlist" target="mainFrame" class="left-font03" onClick="tupian('21');">表彰名单</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu21" src="resources/admin/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="admin/update/${USER_KEY.YWXH }" target="mainFrame" class="left-font03" onClick="tupian('21');">密码修改</a></td>
				</tr>
      </table>
		<!--  任务系统结束    -->

	  </TD>
  </tr>
  
</table>
</body>
</html>
