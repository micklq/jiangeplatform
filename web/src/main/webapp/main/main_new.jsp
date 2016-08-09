<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/sitemesh-decorator.tld" prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<% 
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";

%>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><decorator:title default="剑阁县人民检察院平台管理" />-剑阁县人民检察院平台管理</title>
<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/easyui/easyui.css">
<link href="<%=basePath%>style/css.css" rel="stylesheet">
<script src="<%=basePath%>script/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>script/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>script/easyui/locale/easyui-lang-zh_CN.js"></script>
<script src="<%=basePath%>/script/jsMain.js"></script>
<decorator:head />
</head>
<body class="easyui-layout">
	<!-- 头部标题 -->
	<div class="header_box">
	<h1 class="l logo"><img src="image/logo.png" /></h1>
    <div class="r quit_box">
    	<p style="width:203px"><img src="image/head.png" width="44" height="44" /> <b>检察官</b><span>部门：监督部&nbsp;&nbsp;&nbsp;职务：领导</span></p>
        <p class="quit_btn"><a href="javscript:;">退出</a></p>
    </div>
   </div>
   <!-- 内容tabs -->
	<div id="mainFrame">
		<decorator:body />
	</div>
	<!-- 左侧导航 -->
	<div class="left_box">
	<ul>
    	<li><a href="<%=basePath%>firstnet/nlist"><img src="image/fjwl.png" width="35" height="35"><span>分级网络</span></a></li>
        <li><a href="<%=basePath%>letter/nlist"><img src="image/jfpt.png" width="35" height="35"><span>接访平台</span></a></li>
        <li><a href="<%=basePath%>caringpeople/nlist" ><img src="image/wwpt.png" width="35" height="35"><span>维稳平台</span></a></li>
        <li><a href="<%=basePath%>superv/nlist"><img src="image/jdxx.png" width="35" height="35"><span>监督信息</span></a></li>
        <li><a href="<%=basePath%>areamanage/nlist" class="hover"><img src="image/xxpt.png" width="35" height="35"><span>信息平台</span></a></li>
        <li><a href="<%=basePath%>user/userlist"><img src="image/glpt.png" width="35" height="35"><span>管理平台</span></a></li>
    </ul>
   </div>

	<!-- 页脚信息 -->
	<p class="bq_footer">版权所有：监督县人民检察院</p>
	

	<!-- 修改密码弹出的添加对话框 -->
	

	<!-- 对话框里的保存和取消按钮 -->
	
</body>
</html>