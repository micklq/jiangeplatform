<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  style="background: white">
 <head>
  <%
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
    <title>后端用户管理</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="<%=basePath%>/css/pagecss.css" rel="stylesheet" type="text/css" />
 <script type="text/javascript" src="<%=basePath%>/js/page/userlist.js" ></script> 
  </head>
<body>
	<!-- 列表 -->
    <table id="tt" data-options="border:false,toolbar:'#tb'">
    </table>
    
    <!-- 列表上面的按钮和搜索条件  -->
     <div id="tb" style="padding:5px;height:auto">
     	<h2>后端用户管理</h2>
     	<hr>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" onclick="javascript:newUser()" plain="true">添加</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" onclick="javascript:editUser()" plain="true">编辑</a>
		<!-- <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" onclick="javascript:destroyUser()" plain="true">删除</a> -->
		<!-- 
		<form action="" id="searchForm">
		<div>
			用户名: <input name="filters['usernameEq']" style="width:80px">
			<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-search" onclick="javascript:doSearch()">查询</a>
		</div>
		</form>
		-->
	</div>
	
	<!-- 弹出的添加对话框 -->
	<div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px" closed="true" buttons="#dlg-buttons">
		<div class="ftitle">用户信息</div>
		<form id="fm" method="post" novalidate>
			<div class="fitem">
				<label>用户名:</label>
				<input name="username" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>密码:</label>
				<input type="password" name="password" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>分配角色:</label>
				<input id="addrolelist" name="rids"/>
			</div>
			<input type="hidden" name="id"/>
			<input type="hidden" name="isEnabled" id="isEnabled" value="1"/>
			<input type="hidden" name="isLocked" id="isLocked" value="0"/>
			<input type="hidden" name="type" id="type" value="admin"/>
		</form>
	</div>
	
	<!-- 对话框里的保存和取消按钮 -->
	<div id="dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser('#dlg','#fm')">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">取消</a>
	</div>
	
	<!-- 弹出的添加对话框 -->
	<div id="updatedlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px" closed="true" buttons="#updatedlg-buttons">
		<div class="ftitle">用户信息</div>
		<form id="updatefm" method="post" novalidate>
			<div class="fitem">
				<label>用户名:</label>
				<input name="username" class="easyui-validatebox" required="true" readonly="readonly">
			</div>
			<div class="fitem">
				<label>分配角色:</label>
				<input id="editrolelist" name="rids"/>
			</div>
			<div class="fitem">
				<label>锁定状态:</label>
				<select id="isLocked" name="isLocked" class="easyui-combobox">
				 	<option value="0">未锁定</option>
					<option value="1">已锁定</option>
				</select>
			</div>
			<input type="hidden" name="id"/>
			<!-- 既然密码不允许传到json里面，那在保存的时候就需要设置一下密码在更新的时候不做校验 -->
		</form>
	</div>
	
	<!-- 对话框里的保存和取消按钮 -->
	<div id="updatedlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser('#updatedlg','#updatefm')">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#updatedlg').dialog('close')">取消</a>
	</div>

</body>
</html>
