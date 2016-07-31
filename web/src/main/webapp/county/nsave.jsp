<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
<title>欢迎访问剑阁网络管理平台</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
</head>
<body>
<!--content-->
<div class="content_box">
    <div class="content_right2">
    	<div class="content_left_con4">
        	<ul class="table_add">
             <li><a href="${pageContext.request.contextPath}/areamanage/nlist">片区管理</a></li>
             <li><a href="${pageContext.request.contextPath}/org/nlist">科室管理</a></li>
             <li><a href="${pageContext.request.contextPath}/county/nlist" class="hover">县域登记</a></li>
             <li><a href="${pageContext.request.contextPath}/ouser/nlist">联络员登记</a></li> 
             <li><a href="${pageContext.request.contextPath}/cpschedule/nlist">日程管理</a></li> 
            </ul>
            <div class="tab_select_box3 ClearFix"	>
            	<h3 class="title_jiandu_font">乡镇维护</h3>
                <div class="forem_box_set">
                <form id="updatefm" method="post" novalidate>
                    <table cellpadding="0" cellspacing="0" class="tab_padding_t">
                        <tr>
                            <td align="right">乡镇名称：</td>
                            <td>
                            <input type="hidden" name="id"  id="id" value="${requestScope.county.id}" />
                            <input type="text" name="name" class="easyui-validatebox w220" required="true" value="${requestScope.county.name}" />
                            </td>
                        </tr> 
                        <tr>
                            <td align="right">注释：</td>
                            <td>                            
                            <input type="text" name="description" class="easyui-validatebox w220" required="true" value="${requestScope.county.description}" />
                            </td>
                        </tr> 
                        <tr>
                            <td></td>
                            <td><p class="twobtn_set" style="margin-left:5px;"><a href="javascript:void(0);" onclick="save()">提交信息</a><a href="javascript:void(0);" onclick="back()">返回</a></p></td>
                        </tr>
                    </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
function back(){
	location.href="${pageContext.request.contextPath}/county/nlist";
}
function save(){
	var url;
	if($("#id").val()>0)
	{
		url="${pageContext.request.contextPath}/county/update";	
	}
	else
	{
		url="${pageContext.request.contextPath}/county/create";	
	}
	$.ajax({
            url: url,
            data: getFormJson("#updatefm"),
            type: "post",
            dataType: "json",
            beforeSend: function(){
             return $("#updatefm").form( 'validate');
            },
            success: function (result){
                if (result[ "success"]== true){  
                	location.href="${pageContext.request.contextPath}/county/nlist";                    
                } else {
                	showMessage( "错误提示",result["result"],3000);
                }
            },
            error:function (result){
            	showMessage( "Error",JSON.stringify(result),5000);
            }
        });
	}
</script>
</body>
</html>
