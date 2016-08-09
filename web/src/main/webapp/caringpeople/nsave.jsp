<%@page import="platform.county.jiange.model.enums.*"%>
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
    	<div class="content_left_con2">
            <div class="tab_select_box">
            	<h3 class="title_jiandu_font">人员信息</h3>
				<div class="add_name_box">
				<form id="updatefm" method="post" novalidate>
                	<table cellpadding="0" cellspacing="0" width="775" class="tabl_form_sebo">
                    	<tr>
                        	<td align="right" width="124">姓名：</td>
                            <td>
                            <input type="hidden" name="id"  id="id" value="${requestScope.caring.id}" /> 
                            <input type="text" name="name" class="easyui-validatebox input_width113"  required="true" value="${requestScope.caring.name}"/>
                            </td>
                            <td align="right" width="95">性别：</td>
                            <td>
                            <select id="gender" class="easyui-combobox easyui-validatebox" name="gender" required="true">				            
				              <% for( Gender type : Gender.values() ){ %>
				             <option value="<%= type.getName() %>"><%= type.getName() %></option>
				              <% } %>  		            
				           </select>                             
                            </td>
                            <td align="right" width="106">出生年月：</td>
                            <td>
                            <input type="text" name="birthdate" class="easyui-datebox" required="true" value="${requestScope.caring.birthdate}">                               
                        	</td>
                        </tr>
                        <tr>
                        	<td align="right">民族：</td>
                            <td>
                            <select id="nation" class="easyui-combobox easyui-validatebox" name="nation" required="true">
				              <% for( Nation type : Nation.values() ){ %>
				             <option value="<%= type.getName() %>"><%= type.getName() %></option>
				              <% } %>  
				           </select>  	
                            </td>
                            <td align="right">籍贯：</td>
                            <td>
                            <select id="nativeplace" class="easyui-combobox easyui-validatebox" name="nativeplace" required="true">
				             <c:forEach items="${countyList}" var="item" >
				             <option value="${item.name}">${item.name}</option>
				             </c:forEach>
				           </select> 
                            </td>
                            <td align="right">参加工作时间：</td>
                            <td>
                               <input type="text" name="worktime" class="easyui-datebox" required="true" value="${requestScope.caring.worktime}"
                            </td>
                        </tr>
                        <tr>
                        	<td align="right">政治面貌：</td>
                            <td>
                             <select id="political" class="easyui-combobox easyui-validatebox" name="political" required="true">
				              <% for( Political type : Political.values() ){ %>
				             <option value="<%= type.getName() %>"><%= type.getName() %></option>
				              <% } %>  
				             </select>                             	
                            </td>
                            <td align="right">学历：</td>
                            <td>
                             <select id="degree" class="easyui-combobox easyui-validatebox" name="degree" required="true">
				             <% for( Degree type : Degree.values() ){ %>
				             <option value="<%= type.getName() %>"><%= type.getName() %></option>
				              <% } %>  
				             </select> 
                            </td>
                            <td align="right">联系电话：</td>
                            <td><input type="text" name="mobile" class="easyui-validatebox width230" required="true" value="${requestScope.caring.mobile}"></td>
                        </tr>
                        <tr>
                        	<td align="right" >监护人/责任人：</td>                            
                            <td><input type="text" name="guardian" class="easyui-validatebox width84" required="true" value="${requestScope.caring.guardian}"></td>
                            <td align="right">所属联络点：</td>
                            <td>
                             <select id="countyid" name="countyid" required="true" class="easyui-combobox easyui-validatebox" >
				             <c:forEach items="${countyList}" var="item" >
				             <option value="${item.id}">${item.name}</option>
				             </c:forEach>
				             </select> 
                            </td>
                             <td align="right">维稳类型：</td>
                            <td>
                             <select id="categoryid" name="categoryid" required="true" class="easyui-combobox easyui-validatebox" >
				             <c:forEach items="${categoryList}" var="item" >
				             <option value="${item.id}">${item.name}</option>
				             </c:forEach>
				             </select> 
                            </td>
                        </tr>                        
                        <tr>
                        	<td align="right">家庭地址或工作单位：</td>
                            <td colspan="5"><input type="text" name="address" class="easyui-validatebox input_box_width" required="true" value="${requestScope.caring.address}"/></td>
                        </tr>
                        <tr>
                        	<td align="right">检查事由：</td>
                            <td colspan="5"><textarea  name="description"  name="description" class="easyui-validatebox input_box_width1">${requestScope.caring.description}</textarea></td>
                        </tr>
                        <tr>
                        	<td align="right">其他备注：</td>
                            <td colspan="5"><input type="text" name="others" class="easyui-validatebox input_box_width" required="true" value="${requestScope.caring.others}"/></td>
                        </tr>
                        <tr>
                        	<td></td>
                            <td colspan="5"><p class="twobtn_set" style="margin-left:5px;"><a href="javascript:void(0);" onclick="save()">提交信息</a><a href="javascript:void(0);" onclick="back()">返回</a></p></td>
                        </tr>
                    </table>
                    </form>
                </div>
            </div>
        </div>
  </div>
</div>
<script type="text/javascript">
$("#gender").val("${requestScope.caring.gender}");
$("#nation").val("${requestScope.caring.nation}");
$("#nativeplace").val("${requestScope.caring.nativeplace}");
$("#political").val("${requestScope.caring.political}");
$("#degree").val("${requestScope.caring.degree}");
$("#countyid").val("${requestScope.caring.countyid}");
$("#categoryid").val("${requestScope.caring.categoryid}");
function back(){
	location.href="${pageContext.request.contextPath}/caringpeople/nlist";
}
function save(){
	var url;
	if($("#id").val()>0)
	{
		url="${pageContext.request.contextPath}/caringpeople/update";	
	}
	else
	{
		url="${pageContext.request.contextPath}/caringpeople/create";	
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
                	location.href="${pageContext.request.contextPath}/caringpeople/nlist";                    
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
