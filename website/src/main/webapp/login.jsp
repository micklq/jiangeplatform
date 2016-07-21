<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>剑阁县网络化社会管理服务-登陆</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link href="css/default.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="files/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="files/easyui/themes/icon.css">
<link rel="stylesheet" href="files/zTree/zTreeStyle.css" type="text/css">
<script src="js/jquery.min.js"></script>
<script src="files/easyui/jquery.easyui.min.js"></script>
<script src="files/easyui/jquery.easyui.patch.js"></script>
<script src="files/easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="files/zTree/jquery.ztree.core-3.5.min.js"></script>
<script type="text/javascript" src="js/DateUtil.js"></script>
<script type="text/javascript" src="files/main.js"></script>
</head>
<script type="text/javascript">
	function clickButton() {
		$.ajax({
			url : 'login/loginAjax',
			data : getFormJson('#myform'),
			type : "post",
			dataType : "json",
			beforeSend : function() {
				return $('#myform').form('enableValidation').form('validate');
			},
			success : function(result) {
				if (result["result"] == "success") {
					location.href = "index/welcome?pid=16";
				} else {
					showMessage("Error", result["message"]);
				}
			}
		});
	}

	$(function() {
		$(':input[type="password"]').change(function(){
			$(":input[name='password']").val($(this).val());
		});
		document.onkeydown = function(e){  
		    var ev = document.all ? window.event : e;   
		    if(ev.keyCode==13) {        
		    	$(':input[type="password"]').trigger("change");                 
		        clickButton();
		    }                                           
		}                                               
	});                                                 
</script>
<body>
	<center style="margin-top:180px">
		<div class="easyui-panel" title="管理后台系统登陆" style="width:400px;">
			<div style="padding:10px 60px 20px 60px">
				<form id="myform" method="post" class="easyui-form" data-options="novalidate:true">
					<table cellpadding="5">
						<tr>
							<td><h3>用户名:</h3></td>
							<td>
								<input id="username"  class="easyui-textbox" type="text" name="username" value="" style="width:100%;height:40px;padding:12px" data-options="required:true,prompt:'username',iconCls:'icon-man',iconWidth:38"/>
							</td>
						</tr>
						<tr>
							<td><h3>密&nbsp;&nbsp;&nbsp;&nbsp;码:</h3></td>
							<td>
								<input id="password" class="easyui-textbox" type="password" name="password" value="" style="width:100%;height:40px;padding:12px" data-options="required:true,prompt:'password',iconCls:'icon-lock',iconWidth:38"/>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="right">
								<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" style="width:200px;height: 50px;" onclick="clickButton();"><h3>登 陆</h3></a>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</center>
</body>
</html>
