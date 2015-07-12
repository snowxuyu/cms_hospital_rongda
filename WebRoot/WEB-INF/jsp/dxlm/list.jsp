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
		<c:forEach items="${dxlm}" var="dm" begin="0"  end="0">
                <c:if test="${fn:trim(dm.LMFL)=='A'}">
					工作动态
				</c:if>
				 <c:if test="${fn:trim(dm.LMFL)=='B'}">
					个案记录
				</c:if>
				 <c:if test="${fn:trim(dm.LMFL)=='C'}">
					小组记录
				</c:if>
		</c:forEach>	
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
	<table width="100%" border="0" cellspacing="0" cellpadding="0"><%--
  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="resources/admin/images/nav04.gif">
            
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		    <tr>
			  <td width="21"><img src="resources/admin/images/ico07.gif" width="20" height="18" /></td>
			  <td width="538">查看内容：按时间：
				<input name="textfield" type="text" size="12" readonly="readonly"/>
				<span class="newfont06">至</span>
				<input name="textfield" type="text" size="12" readonly="readonly"/>
				<input name="Submit4" type="button" class="right-button02" value="查 询" /></td>
			   <td width="144" align="left"><a href="#" onclick="sousuo()">
			     <input name="Submit3" type="button" class="right-button07" value="高级搜索" />
			   </a></td>	
		    </tr>
          </table></td>
        </tr>
    </table></td></tr>
  <tr>
    --%>
    <tr>
      		<th class="tablestyle_title" >
      		<c:forEach items="${dxlm}" var="dm" begin="0"  end="0">
                <c:if test="${fn:trim(dm.LMFL)=='A'}">
					工作动态页面
				</c:if>
				 <c:if test="${fn:trim(dm.LMFL)=='B'}">
					个案记录页面
				</c:if>
				 <c:if test="${fn:trim(dm.LMFL)=='C'}">
					小组记录页面
				</c:if>
		</c:forEach></th>
  		</tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>
         
          <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          
         
          
          	 <tr>
               <td height="20">
	              <a href="cmsdxlm/add">[添加]</a>
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
                    <td width="10%">任务标题</td>
					<td width="10%">发布人</td>
                    <td width="10%">发布时间</td>
					<td width="12%">操作</td>
                  </tr>
                  <c:forEach items="${dxlm}" var="dxlm" varStatus="s">
	                  <tr bgcolor="#FFFFFF">
					    <td height="20">${s.count}</td>
	                    <td ><a href="cmsdxlm/update/${dxlm.YWXH }">${dxlm.LMBT }</a></td>
						<td>${dxlm.FBR }</td>
	                    <td>
	                    	<fmt:formatDate value="${dxlm.FBSJ }" type="date"/>
	                    </td>
	                    <td><a href="cmsdxlm/update/${dxlm.YWXH }">编辑|</a>
						<a href="cmsdxlm/delete/${dxlm.YWXH }">删除</a></td>
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
