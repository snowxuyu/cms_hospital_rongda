<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>
		表彰名单
	</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="resources/admin/css/css.css" rel="stylesheet" type="text/css" />
	<script type="text/JavaScript">
	</script>
	<link href="resources/admin/css/style.css" rel="stylesheet" type="text/css" />
	
  </head>
  
  <body>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      		<th class="tablestyle_title" >
      		表彰名单页面</th>
  		</tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>
         
          <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          
         
          
          	 <tr>
               <td height="20">
	              <a href="CmsBzmc/add">[添加]</a>
	              </td>
          	 </tr>
              <tr>
                <td height="40" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="7" align="center" style="font-size:16px">详细列表</td>
                  </tr>
                  <tr bgcolor="#EEEEEE">
				    <td width="4%" align="center" height="30">序号</td>
                    <td width="10%">姓名</td>
                    <td width="10%">单位</td>
					<td width="10%">创建人</td>
                    <td width="10%">创建时间</td>
					<td width="12%">操作</td>
                  </tr>
                  <c:forEach items="${bzmc}" var="bzmc" varStatus="s">
	                  <tr bgcolor="#FFFFFF">
					    <td height="20">${s.count}</td>
	                    <td ><a href="CmsBzmc/update/${bzmc.YWXH }">${bzmc.XM }</a></td>
	                    <td>${bzmc.DW }</td>
						<td>${bzmc.CJR }</td>
	                    <td>
	                    	<fmt:formatDate value="${bzmc.CJSJ}" type="date"/>
	                    </td>
	                    <td><a href="CmsBzmc/update/${bzmc.YWXH }">编辑|</a>
						<a href="CmsBzmc/delete/${bzmc.YWXH }">删除</a></td>
	                  </tr>
                  </c:forEach>
            </table></td>
        </tr>
      </table>
      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="6"><img src="resources/admin/images/spacer.gif" width="1" height="1" /></td>
        </tr>
        <tr>
          <td height="33"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
              <tr>
                <td width="50%">共 <span class="right-text09">5</span> 页 | 第 <span class="right-text09">1</span> 页</td>
                <td width="49%" align="right">[<a href="#" class="right-font08">首页</a> | <a href="#" class="right-font08">上一页</a> | <a href="#" class="right-font08">下一页</a> | <a href="#" class="right-font08">末页</a>] 转至：</td>
                <td width="1%"><table width="20" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="1%"><input name="textfield3" type="text" class="right-textfield03" size="1" /></td>
                      <td width="87%"><input name="Submit23222" type="submit" class="right-button06" value=" " />
                      </td>
                    </tr>
                </table></td>
              </tr>
          </table></td>
        </tr>
      </table>
     </td>
  </tr> 
</table>
  </body>
</html>
