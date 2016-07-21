<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <%
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
    <title>重点关注人员信息</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="<%=basePath%>/css/pagecss.css" rel="stylesheet" type="text/css" />  
    <script type="text/javascript" src="<%=basePath%>/js/page/caringpeople.js" ></script>  
  </head>
<body>
	<!-- 列表 -->
    <table id="tt" data-options="border:false,toolbar:'#tb'">
    </table>
    
    <!-- 列表上面的按钮和搜索条件  -->
     <div id="tb" style="padding:5px;height:auto">
     	<h2>重点关注人员信息管理</h2>
     	<hr>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" onclick="javascript:newCaringPeople()" plain="true">添加</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" onclick="javascript:editCaringPeople()" plain="true">编辑</a> 
	</div>

<!-- 弹出的添加对话框 -->
<div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px" closed="true" buttons="#dlg-buttons">
		<div class="ftitle">重点关注人员信息</div>
		<form id="fm" method="post" novalidate>
			<div class="fitem">
				<label>姓名:</label>
				<input type="text" name="name" class="easyui-validatebox" required="true" >
			</div>
			<div class="fitem">
				<label>性别:</label>
				<input type="text" name="gender" class="easyui-validatebox" >
			</div>	
			<div class="fitem">
				<label>地址:</label>
				<input type="text" name="address" class="easyui-validatebox" >
			</div>			
			<div class="fitem">		
				<label>分类:</label>
				 <select id="addPid" class="easyui-combogrid easyui-validatebox" name="categoryid" required="true" style="width:155px" 
				    data-options="
				    panelWidth:250,
				    idField:'id',
				    textField:'name',
				    fitColumns:true,
				    url:'ajax/caringcategory',
				    columns:[[
				    {field:'id',title:'ID',width:100},
				    {field:'name',title:'名称',width:100}
				    ]]"></select>
			</div>		
			<input type="hidden" name="id"/>			
		</form>
	</div>
	
	<!-- 对话框里的保存和取消按钮 -->
	<div id="dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveCaringPeople('#dlg','#fm')">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">取消</a>
	</div>
	
	<!-- 弹出的更新对话框 -->
	<div id="updatedlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px" closed="true" buttons="#updatedlg-buttons">
		<div class="ftitle">重点关注人员信息</div>
		<form id="updatefm" method="post" novalidate>
			<div class="fitem">
				<label>姓名:</label>
				<input type="text" name="name" class="easyui-validatebox" required="true" >
			</div>
			<div class="fitem">
				<label>性别:</label>
				<input type="text" name="gender" class="easyui-validatebox" >
			</div>	
			<div class="fitem">
				<label>地址:</label>
				<input type="text" name="address" class="easyui-validatebox" >
			</div>				
			<div class="fitem">		
				<label>分类:</label>
				 <select id="addPid" class="easyui-combogrid easyui-validatebox" name="categoryid" required="true" style="width:155px" 
				    data-options="
				    panelWidth:250,
				    idField:'id',
				    textField:'name',
				    fitColumns:true,
				    url:'ajax/caringcategory',
				    columns:[[
				    {field:'id',title:'ID',width:100},
				    {field:'name',title:'名称',width:100}
				    ]]"></select>
			</div>			
			<input type="hidden" name="id"/>			
		</form>
	</div>
	
	<!-- 对话框里的保存和取消按钮 -->
	<div id="updatedlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveCaringPeople('#updatedlg','#updatefm')">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#updatedlg').dialog('close')">取消</a>
	</div>

</body>
</html>
