<%@page import="platform.county.jiange.model.enums.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <%
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
    <title>学校信息</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="<%=basePath%>/css/pagecss.css" rel="stylesheet" type="text/css" />   
    <script type="text/javascript" src="<%=basePath%>/js/page/school.js" ></script>    
  </head>
<body>
	<!-- 列表 -->
    <table id="tt" data-options="border:false,toolbar:'#tb'">
    </table>
    
    <!-- 列表上面的按钮和搜索条件  -->
     <div id="tb" style="padding:5px;height:auto">
     	<h2>学校信息管理</h2>
     	<hr>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" onclick="javascript:newSchool()" plain="true">添加</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" onclick="javascript:editSchool()" plain="true">编辑</a> 
	</div>
<!-- 弹出的添加对话框 -->
<div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px" closed="true" buttons="#dlg-buttons">
		<div class="ftitle">学校信息</div>
		<form id="fm" method="post" novalidate>
			<div class="fitem">
				<label>名称:</label>
				<input type="text" name="name" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>是否阳光服务站:</label>				
				 <select id="addPid" class="easyui-combobox easyui-validatebox" name="issun" required="true" style="width:155px">
				 <% for( YesOrNO type : YesOrNO.values() ){ %>
					<option value="<%= type.getValue() %>"><%= type.getName() %></option>
				 <% } %>
				 </select>			
			</div>				
			<div class="fitem">
				<label>所属区域:</label>				
				 <select id="addPid" class="easyui-combogrid easyui-validatebox" name="countyid" required="true" style="width:155px" 
				    data-options="
				    panelWidth:250,
				    idField:'id',
				    textField:'name',
				    fitColumns:true,
				    url:'ajax/countyall',
				    columns:[[
				    {field:'id',title:'ID',width:100},
				    {field:'name',title:'名称',width:100}
				    ]]"></select>			
			</div>	
			<div class="fitem">
				<label>描述:</label>
				<input type="text" name="description" class="easyui-validatebox" >
			</div>					
			<input type="hidden" name="id"/>			
		</form>
	</div>
	
	<!-- 对话框里的保存和取消按钮 -->
	<div id="dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveSchool('#dlg','#fm')">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">取消</a>
	</div>
	
	<!-- 弹出的更新对话框 -->
	<div id="updatedlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px" closed="true" buttons="#updatedlg-buttons">
		<div class="ftitle">学校信息</div>
		<form id="updatefm" method="post" novalidate>
			<div class="fitem">
				<label>名称:</label>
				<input type="text" name="name" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>是否阳光服务站:</label>				
				 <select id="addPid" class="easyui-combobox easyui-validatebox" name="issun" required="true" style="width:155px">
				 <% for( YesOrNO type : YesOrNO.values() ){ %>
					<option value="<%= type.getValue() %>"><%= type.getName() %></option>
				 <% } %>
				 </select>			
			</div>				
			<div class="fitem">
				<label>所属区域:</label>				
				 <select id="addPid" class="easyui-combogrid easyui-validatebox" name="countyid" required="true" style="width:155px" 
				    data-options="
				    panelWidth:250,
				    idField:'id',
				    textField:'name',
				    fitColumns:true,
				    url:'ajax/countyall',
				    columns:[[
				    {field:'id',title:'ID',width:100},
				    {field:'name',title:'名称',width:100}
				    ]]"></select>			
			</div>	
			<div class="fitem">
				<label>描述:</label>
				<input type="text" name="description" class="easyui-validatebox" >
			</div>			
			<input type="hidden" name="id"/>			
		</form>
	</div>
	
	<!-- 对话框里的保存和取消按钮 -->
	<div id="updatedlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveSchool('#updatedlg','#updatefm')">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#updatedlg').dialog('close')">取消</a>
	</div>

</body>
</html>
