<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
<title>剑阁县网络化社会管理服务-登陆</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link href="<%=basePath%>/style/login.css" rel="stylesheet">
<script src="<%=basePath%>/script/jquery.min.js"></script>
<script src="<%=basePath%>/script/easyui/jquery.easyui.min.js"></script>
<script src="<%=basePath%>/script/easyui/jquery.easyui.patch.js"></script>
<script src="<%=basePath%>/script/easyui/locale/easyui-lang-zh_CN.js"></script>
<script src="<%=basePath%>/script/jsMain.js"></script>
<script src="<%=basePath%>/script/login.js"></script>
</head>
<body>
<div class="position_setbox">
	<div class="login_box">
    	<h1><img src="image/Group.png" /></h1>
        <div class="login_form">
        	<p><img src="image/Group6.png" /></p>
            <div class="from_set">
            <form id="myform" method="post" data-options="novalidate:true">
            	<p class="l left_form">
                	<input id="username"  name="username"  type="text" placeholder="用户名" />
                    <input id="password"  name="password" type="password" placeholder="密码" style="margin-top:16px;" />
                </p>
                <input type="button" class="r button_btn" onclick="clickButton();" />
                </form>
            </div>
        </div>
        <div class="zi_setobx"><img src="image/word.png" /></div>
    </div>
    <p class="footer_box">版权所有：剑阁县人民检察院</p>
 </div>	
</body>
</html>
