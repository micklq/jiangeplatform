<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="background: white">
<head>
<%
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
<title>欢迎访问剑阁网络管理平台</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link href="<%=basePath%>/style/login.css" rel="stylesheet">
<script src="<%=basePath%>/script/jquery.min.js"></script>
</head>
<body>
<!--header-->
<div class="header_box">
	<h1 class="l logo"><img src="<%=basePath%>/image/logo.png" /></h1>
    <div class="r quit_box">
    	<p style="width:110px"><img src="<%=basePath%>/image/head.png" width="44" height="44" /> <b style="line-height:44px;">${uname }</b></p>
        <p class="quit_btn"><a href="<%=basePath%>/login/logout" target="_top">退出</a></p>        
    </div>
</div>
<!--content-->
<div class="content_chose">
	<div class="content_exit">
    	<ul>
        	<li><a href="<%=basePath%>/firstnet/nlist"><img src="<%=basePath%>/image/fjwl.png"><span>分级网络</span></a></li>
            <li><a href="<%=basePath%>/letter/nlist"><img src="<%=basePath%>/image/jfpt.png"><span>接访平台</span></a></li>
            <li><a href="<%=basePath%>/caringpeople/nlist"><img src="<%=basePath%>/image/wwpt.png"><span>维稳平台</span></a></li>
            <li><a href="<%=basePath%>/superv/nlist"><img src="<%=basePath%>/image/jdxx.png"><span>监督信息</span></a></li>
            <li><a href="<%=basePath%>/areamanage/nlist"><img src="<%=basePath%>/image/xxpt.png"><span>信息平台</span></a></li>
            <li><a href="<%=basePath%>/user/userlist"><img src="<%=basePath%>/image/glpt.png"><span>管理平台</span></a></li>            
        </ul>
    </div>
</div>
<p class="footer_box11">版权所有：剑阁县人民检察院</p>
</body>
</html>
