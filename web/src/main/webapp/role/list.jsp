<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  style="background: white">
 <head>
  <%
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
    <title>角色管理</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="<%=basePath%>/css/pagecss.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=basePath%>/js/page/role.js" ></script> 
  </head>
<body>
	<!-- 列表 -->
    <table id="tt" data-options="border:false,toolbar:'#tb'">
    </table>
    
    <!-- 列表上面的按钮和搜索条件  -->
     <div id="tb" style="padding:5px;height:auto">
     	<h2>角色管理</h2>
     	<hr>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" onclick="javascript:newUser()" plain="true">添加</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" onclick="javascript:editUser()" plain="true">编辑</a> 
		<!-- <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" onclick="javascript:destroyUser()" plain="true"></a> -->
	</div>
	
	<!-- 弹出的添加或者编辑对话框 -->
	
	<div id="dlg" class="easyui-dialog" style="width:600px;height:380px;padding:10px 20px" closed="true" buttons="#dlg-buttons">
	
		<div class="easyui-layout" data-options="fit:true">
			<div data-options="region:'west',border:false" style="padding:5px;margin:0 auto;width:350px">
				<div class="ftitle">角色信息</div>
				<!-- 添加 -->
				<form id="fm" method="post" novalidate>
					<div class="fitem">
						<label>角色名:</label>
						<input class="easyui-validatebox easyui-textbox" name="name" style="width:50%" data-options="validType:'length[0,20]',required:true"></input>
					</div>
					<div class="fitem">
						<label>是否系统角色:</label>
						<select class="easyui-combobox easyui-validatebox" required="true" name="isSystem" style="width:50%;">
							<option value="1">是</option>
							<option value="0">否</option>
						</select>
					</div>
					<div class="fitem">
						<label>描述:</label>
						<input class="easyui-validatebox easyui-textbox" name="description" id="description" data-options="multiline:true,validType:'length[0,100]',novalidate:true" value="" style="width:50%;height:100px">
					</div>
					<input type="hidden" name="id"/>
				</form>
			</div>
			
			<div data-options="region:'center',border:false" style="padding:5px;margin:0 auto;">
				<div class="ftitle">分配权限</div>
				<ul id="permissionTree"></ul>
			</div>
		</div>
		
	</div>
	
	<!-- 添加对话框里的保存和取消按钮 -->
	<div id="dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser('#dlg','#fm','#permissionTree')">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">取消</a>
	</div>
	
	<div id="updatedlg" class="easyui-dialog" style="width:600px;height:380px;padding:10px 20px" closed="true" buttons="#updatedlg-buttons">
	
	<div class="easyui-layout" data-options="fit:true">
			<div data-options="region:'west',border:false" style="padding:5px;margin:0 auto;width:350px">
		<div class="ftitle">角色信息</div>
		<!-- 修改 -->
		<form id="updatefm" method="post" novalidate>
			<div class="fitem">
				<label>角色名:</label>
				<input name="name" class="easyui-validatebox easyui-textbox" required="true">
			</div>
			<div class="fitem">
				<label>描述:</label>
				<input class="easyui-validatebox easyui-textbox" name="description" id="description" data-options="multiline:true,validType:'length[0,100]',novalidate:true" value="" style="width:50%;height:100px">
			</div>
			<input type="hidden" name="id"/>
		</form>
		</div>
			
			<div data-options="region:'center',border:false" style="padding:5px;margin:0 auto;">
				<div class="ftitle">分配权限</div>
				<ul id="editPermissionTree"></ul>
			</div>
	</div>
	
	<!-- 编辑对话框里的保存和取消按钮 -->
	<div id="updatedlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser('#updatedlg','#updatefm','#editPermissionTree')">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#updatedlg').dialog('close')">取消</a>
	</div>
 
</body>
</html>
