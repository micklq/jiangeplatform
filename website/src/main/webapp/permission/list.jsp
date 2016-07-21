<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  style="background: white">
 <head>
  <%
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
    <title>标题管理</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="<%=basePath%>/css/pagecss.css" rel="stylesheet" type="text/css" />  
    <script type="text/javascript" src="<%=basePath%>/js/page/permissionlist.js" ></script> 
  </head>
<body>
	<!-- 列表 -->
    <table id="tt" data-options="border:false,toolbar:'#tb'">
    </table>
    
    <!-- 列表上面的按钮和搜索条件  -->
     <div id="tb" style="padding:5px;height:auto">
		<div style="margin-bottom:5px">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" onclick="javascript:newUser()" plain="true"></a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" onclick="javascript:editUser()" plain="true"></a>
		<!-- <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" onclick="javascript:destroyUser()" plain="true"></a> --> 
		</div>
	</div>
	
	<!-- 弹出的添加或者编辑对话框 -->
	<div id="dlg" class="easyui-dialog" style="width:400px;height:380px;padding:10px 20px" closed="true" buttons="#dlg-buttons">
		<div class="ftitle">新增菜单</div>
		<!-- 添加 -->
		<form id="fm" method="post" novalidate>
			<input type="hidden" name="status" id="status" value="active"/>
			<div class="fitem">
				<label>菜单名称:</label>
				<input name="name" class="easyui-validatebox easyui-textbox" required="true">
			</div>
			<div class="fitem">
				<label>上级菜单id:</label>
				<input name="pid" class="easyui-validatebox easyui-textbox" required="true">
			</div>
			<div class="fitem">
				<label>访问地址:</label>
				<input name="value" class="easyui-validatebox easyui-textbox">
			</div>
			<div class="fitem">
				<label>权重:</label>
				<input name="sort" class="easyui-numberbox easyui-textbox" data-options="invalidMessage:'请输入正确的数字',required:'true'" >
			</div>
			<input type="hidden" name="id"/>
		</form>
	</div>
	
	<!-- 添加对话框里的保存和取消按钮 -->
	<div id="dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser('#dlg','#fm')">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">取消</a>
	</div>
	
	<div id="updatedlg" class="easyui-dialog" style="width:400px;height:380px;padding:10px 20px" closed="true" buttons="#updatedlg-buttons">
		<div class="ftitle">修改标签</div>
		<!-- 修改 -->
		<form id="updatefm" method="post" novalidate>
			<div class="fitem">
				<label>菜单名称:</label>
				<input name="name" class="easyui-validatebox easyui-textbox" required="true">
			</div>
			<div class="fitem">
				<label>上级菜单id:</label>
				<input name="pid" class="easyui-validatebox easyui-textbox" required="true">
			</div>
			<div class="fitem">
				<label>访问地址:</label>
				<input name="value" class="easyui-validatebox easyui-textbox">
			</div>
			<div class="fitem">
				<label>权重:</label>
				<input name="sort" class="easyui-numberbox easyui-textbox" data-options="invalidMessage:'请输入正确的数字',required:'true'" >
			</div>
			<input type="hidden" name="id"/>
		</form>
	</div>
	
	<!-- 编辑对话框里的保存和取消按钮 -->
	<div id="updatedlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser('#updatedlg','#updatefm')">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#updatedlg').dialog('close')">取消</a>
	</div>

</body>
</html>
