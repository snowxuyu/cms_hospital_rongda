<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<%=request.getContextPath() %>/resources/css/index.css" rel="stylesheet" type="text/css" />
<title>迎园医院-志愿者社工平台</title>
</head>

<body>

<!--headerTOP-->
<div class="headerTop">
	<img class="logo01" src="<%=request.getContextPath() %>/resources/images/hospitalLogo.png" />
    <img class="logo02" src="<%=request.getContextPath() %>/resources/images/volunteersLogo.png" />
    <div class="glyBox">    	
        <a href="<%=request.getContextPath() %>/admin/login">管理员入口</a>
    </div>
</div>
<!--nav-->
<div class="navBox">
	<ul class="nav">
    	<li class="navHover"><a href="#">首页</a></li>
        <li><a href="<%=request.getContextPath() %>/zxlm/query2" >社工部简介</a></li>
        <li><a href="<%=request.getContextPath() %>/zxlm/query3">制度建设</a></li>
        <li><a href="<%=request.getContextPath() %>/cmsdxlm/qtlist/A">工作动态</a></li>
        <li><a href="#">时间银行</a></li>
        <li><a href="<%=request.getContextPath() %>/zxlm/query4">培训资料</a></li>
        <li><a href="<%=request.getContextPath() %>/zxlm/query5">义工招募</a></li>
        <li><a href="<%=request.getContextPath() %>/cmsdxlm/qtlist/B">个案记录</a></li>
        <li><a href="<%=request.getContextPath() %>/cmsdxlm/qtlist/C">小组记录</a></li>
    </ul>
</div>

<!--container-->
<div class="containerBox">
	<!--上面的内容-->
	<div class="containerBox01">
    	<div class="banner">
        	<img src="<%=request.getContextPath() %>/resources/images/banner01.png" />
        </div>
        <div class="gongzuodongtai">
        	<div class="name">
        		<h1>工作动态</h1>
                <h2><a href="<%=request.getContextPath() %>/cmsdxlm/qtlist/A">更多</a></h2>
            </div>
            <dl class="newsBox newsBox01">
		    	<c:forEach items="${dxlm}" var="dxlm" begin="0" end="5" varStatus="s">
		        <dd><a href="<%=request.getContextPath() %>/cmsdxlm/show/${dxlm.YWXH }">${s.count}.
		        ${fn:substring(dxlm.LMBT ,0,12)}${fn:length(dxlm.LMBT) > 12?'...':''}
		        </a><span><fmt:formatDate value="${dxlm.FBSJ }" type="date"/></span></dd>
		        </c:forEach>
			</dl>
                       
        </div>    	
    </div>
    
    <!--下面的内容-->
    <div class="containerBox02">
    	<div class="erweima gongzuodongtai">
        	<div class="name">
        		<h1>微信二维码</h1>                
            </div>
            <img  class="weixinerweima"src="<%=request.getContextPath() %>/resources/images/2weima.png" />
        </div>
        <div class="biaozhangList gongzuodongtai">
        	<div class="name">
        		<h1>表彰名单</h1>
                <h2><a href="<%=request.getContextPath() %>/CmsBzmc/querybzmc">更多</a></h2>
            </div>
            <div class="listNews">
            <c:forEach items="${bzmc}" var="bzmc" varStatus="status" begin="0" end="2"  >
            	 	<div class="listNews01"  align="left">
                	<img  class="picture"src="<%=request.getContextPath() %>/resources/images/girl.png" />
                    <div class="listNews001">
                    <div class="numberBox">
                        	<p>${ status.index + 1}</p>
                        </div>
                    
                        <div class="news001Box">
			                <p>姓名：${bzmc.XM}</p>
                            <p>单位：${bzmc.DW}</p>
                            <p class="news001Red">优秀志愿者</p>
                        </div>
                    </div>
                </div>
                </c:forEach>
               
            </div>
        </div>
    </div>
</div>
<!--页脚-->
<div class="footer footerTop">Copyright©2014-2020 嘉定区迎园医院  版权所有 ©技术支持 上海融达信息科技有限公司</div>
</body>
</html>