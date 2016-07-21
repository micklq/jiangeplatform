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
<title><decorator:title default="ibumneg video content system 后台管理" /> - ibumneg video content system 后台管理</title>
<link rel="stylesheet" type="text/css" href="css/default.css">
<link rel="stylesheet" type="text/css" href="files/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="files/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="css/button.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="files/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="files/easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/datagrid-dnd.js"></script>
<script type="text/javascript" src="files/main.js"></script>

<script type="text/javascript">
var baseUrl = "<%=basePath%>";
</script>
<script type="text/javascript">
//修改密码
function updatePassword(){
	$("#passwordfm").form('clear');
	$("#id").val(${uid});
	$("#passworddlg").dialog('open').dialog('setTitle',"修改密码");
}

function save(mydialogueId,myFormId){
	var new_password=$("#new_password").val();
	var new_repeat_password=$("#new_repeat_password").val();
	if($.trim(new_password)!=$.trim(new_repeat_password)){
		showMessage( "错误","新密码与重复密码不一致",3000);
		return;
	}
	
	$.ajax({
        url: "user/updatePasswordAjax",
        data: getFormJson( myFormId),
        type: "post",
        dataType: "json",
        beforeSend: function(){
         return $( myFormId).form( 'validate');
        },
        success: function (result){
            if (result[ "success"]== true){
            	showMessage( "成功提示","修改密码成功",3000);
                $( mydialogueId).dialog( 'close'); // close the dialog
            } else {
            	showMessage( "错误",result["result"],3000);
            }
        },
        error:function (result){
        	showMessage( "Error",JSON.stringify(result),5000);
        }
    });
}

	$(document).ready(function(){  
	     var pid='${pid}';
	     if(pid&&pid!=16){
	    	 $("#pmenu"+pid).prev().click();
	     }
	     var menuId='${menuId}';
	     if(menuId){
	    	 $("#menu"+menuId).attr("class", " accordion-header-selected ");
	     }	     
	});
	
	function saveMenuId(pid,menuId){
		$.ajax({
	        url: "permission/saveMenuId",
	        data:{'pid':pid,'menuId':menuId},
	        type: "post",
	        dataType: "json",
	        success: function (result){
	           
	        },
	        error:function (result){
	        	showMessage( "Error",JSON.stringify(result),5000);
	        }
	    });
	}

</script>
<style>
.bwhite {
	color: #fff;
	font-weight: bold;
}

.t {
	clear: both;
	height: 39px;
	width: 100%;
	overflow: hidden;
}

.t_left {
	background: url(./images/tl.png) no-repeat top left;
	line-height: 25px;
	height: 39px;
	text-align: left;
	padding-left: 22px;
	width: 260px;
	float: left;
}

.t_rtl {
	float: right;
	padding-right: 10px;
	padding-top: 4px;
}

.panel-title {
	text-align: center;
}

#fm {
	margin: 0;
	padding: 10px 30px;
}

.ftitle {
	font-size: 14px;
	font-weight: bold;
	padding: 5px 0;
	margin-bottom: 10px;
	border-bottom: 1px solid #ccc;
}

.fitem {
	margin-bottom: 5px;
}

.fitem label {
	display: inline-block;
	width: 80px;
}

#msg_win {
	border: 1px solid #A67901;
	background: #EAEAEA;
	width: 240px;
	position: absolute;
	right: 0;
	font-size: 12px;
	font-family: Arial;
	margin: 0px;
	display: none;
	overflow: hidden;
	z-index: 99;
}

#msg_win .icos {
	position: absolute;
	top: 2px;
	*top: 0px;
	right: 2px;
	z-index: 9;
}

.icos a {
	float: left;
	color: #833B02;
	margin: 1px;
	text-align: center;
	font-weight: bold;
	width: 14px;
	height: 22px;
	line-height: 22px;
	padding: 1px;
	text-decoration: none;
	font-family: webdings;
}

.icos a:hover {
	color: #fff;
}

#msg_title {
	background: #7DEAFD;
	border-bottom: 1px solid #A67901;
	border-top: 1px solid #FFF;
	border-left: 1px solid #FFF;
	color: #000;
	height: 25px;
	line-height: 25px;
	text-indent: 5px;
}

#msg_content {
	margin: 5px;
	margin-right: 0;
	width: 230px;
	height: 126px;
	overflow: hidden;
}
</style>
<decorator:head />
</head>
<body class="easyui-layout">
	<%@ include file="/files/globalvar.jsp"%>
	<!-- 头部标题 -->
	<div data-options="region:'north',border:false" style="height: 40px; padding-top: 5px; background: url(./images/tbg.png) repeat-x; overflow: hidden;">
		<div class="t">
			<div class="t_left bwhite">管 理 后 台</div>
			<div class="t_rtl bwhite">
				你好，<a href="#" class="easyui-menubutton"
					data-options="menu:'#mm1',iconCls:'icon-man'">${uname }</a> <a
					href="index/welcome" class="easyui-tooltip" title="首页"><img
					src="./images/ico0.gif" /></a> <a href="javascript:void(0)"
					class="easyui-tooltip" title="帮助"><img
					src="./images/ico_t02.gif" /></a> <a href="login/logout"
					class="easyui-tooltip" title="退出" target="_top"><img
					src="./images/ico_t03.gif" /></a>
			</div>
		</div>

		<div id="mm1" style="width: 150px;">
			<div data-options="iconCls:'icon-undo'">
				<a href="javascript:updatePassword();">修改密码</a>
			</div>
		</div>

	</div>

	<!-- 左侧导航 -->
	<div data-options="region:'west',split:true,title:'导航菜单'" style="width: 210px;">
		<div class="easyui-accordion" data-options="fit:true,border:false">
			<c:forEach var="item" items="${menu}">
				<c:if test="${item['pid']==0 }">
					<div id="pmenu${item['id']}" title="${item['name'] }" data-options="" style="text-align: center; overflow-x: hidden;">
						<c:forEach var="subitem" items="${ item['children']}">
							<div id="menu${subitem['id']}" style="border-bottom: 1px solid #E8F1FF">
								<a href="${subitem['value'] }" class="easyui-linkbutton" data-options="plain:true" onclick="saveMenuId('${subitem['pid']}','${subitem['id']}')" style="width: 100%;">${subitem['name'] }</a>
							</div>
						</c:forEach>
					</div>
				</c:if>
			</c:forEach>
		</div>
	</div>

	<!-- 页脚信息 -->
	<div data-options="region:'south',border:false" style="height: 30px; background: #E2EDFF; padding: 2px; vertical-align: middle;">
		版权所有©2016    版本：V&nbsp;&nbsp;1.2.0
	</div>
	<!-- 内容tabs -->
	<div id="mainFrame" data-options="region:'center'" title="主页" style="">
		<decorator:body />
	</div>

	<!-- 修改密码弹出的添加对话框 -->
	<div id="passworddlg" class="easyui-dialog" style="width: 400px; height: 280px; padding: 10px 20px" closed="true" buttons="#passworddlg-buttons">
		<div class="ftitle">修改密码</div>
		<form id="passwordfm" method="post" novalidate>
			<div class="fitem">
				<label>原密码:</label> <input type="password" name="old_password"
					class="easyui-validatebox easyui-textbox" required="true">
			</div>
			<div class="fitem">
				<label>新密码:</label> <input type="password" name="new_password" id="new_password" class="easyui-validatebox easyui-textbox" required="true">
			</div>
			<div class="fitem">
				<label>重复密码:</label> <input type="password" name="new_repeat_password" id="new_repeat_password" class="easyui-validatebox easyui-textbox" required="true">
			</div>
			<input type="hidden" name="id" id="id" value="${uid }" />
		</form>
	</div>

	<!-- 对话框里的保存和取消按钮 -->
	<div id="passworddlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="save('#passworddlg','#passwordfm')">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#passworddlg').dialog('close')">取消</a>
	</div>	
</body>
</html>