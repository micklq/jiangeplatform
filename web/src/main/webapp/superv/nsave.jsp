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
	<div class="content_left12">
    	<div class="content_left_con">
			<div class="bj_contentbj">
            	<div style="padding:20px;">
                	<h3 class="title_jiandu_font" style="border-bottom:none;">信息添加</h3>
                    <table cellpadding="0" cellspacing="0" class="table_span">
                    	<tr>
                        	<td align="right" width="70">主题：</td>                        	
                            <td>
                            <input type="hidden" name="id"  id="id" value="${requestScope.superv.id}" />                           
                            <input type="text" name="title" class="easyui-validatebox w220" required="true" value="${requestScope.superv.title}" />
                            </td>
                        </tr>
                        <tr>
                        	<td align="right">发起人：</td>
                            <td>
                             <select id="officeid" class="easyui-combobox easyui-validatebox" name="officeid" required="true" style="width:220px">
				             <c:forEach items="${ouserList}" var="item" >
				             <option value="${item.id}">${item.name}</option>
				             </c:forEach>
				             </select>   
                            </td>
                        </tr>
                        <tr>
                        	<td align="right">主题详情：</td>
                            <td>
                           <textarea class=" easyui-validatebox textarea_set_ss" name="description" required="true">${requestScope.superv.description}</textarea>                         
                           </td>
                        </tr>
                        <tr>
                        	<td align="right" valign="top" style="padding-top:12px;">来源：</td>
                            <td>
                            <select id="locationid" class="easyui-combobox easyui-validatebox" name="locationid" required="true" style="width:220px">
				             <c:forEach items="${countyList}" var="item" >
				             <option value="${item.id}">${item.name}</option>
				             </c:forEach>
				           </select> 
                            </td>
                        </tr>
                        <tr>
                        	<td align="right"></td>
                            <td><p class="twobtn_set" style="margin-left:5px;"><a href="javascript:void(0);" onclick="save()">提交信息</a><a href="javascript:void(0);" onclick="back()">返回</a></p></td>
                        </tr>
                    </table>
                    
                </div>
            </div>
        </div>
    </div>
    <div class="content_right12">
    	<div class="content_left_con2">
            <div class="tab_select_box" style="padding:0.2%;">
            	<h3 class="jdry_bottom_title">监督人员（18）</h3>
                <ul class="ul_li_box">
                
                <% for(int i=0; i<15;i++){ %>
                     <li>
                    	<img src="images/head1.png" class="header_set" />
                        <p>杨玉林<b>市政府督查室</b><span>督办人</span></p>
                        <a href="javascript:;" class="cheak_a"><input type="checkbox" /></a>
                    </li>
                 <% } %>
                	
                   
                </ul>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
$("#locationid").val("${requestScope.superv.locationid}");
$("#officeid").val("${requestScope.superv.officeid}");
function back(){
	location.href="${pageContext.request.contextPath}/superv/nlist";
}
function save(){
	var url;
	if($("#id").val()>0)
	{
		url="${pageContext.request.contextPath}/superv/update";	
	}
	else
	{
		url="${pageContext.request.contextPath}/superv/create";	
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
                	location.href="${pageContext.request.contextPath}/superv/nlist";                    
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
