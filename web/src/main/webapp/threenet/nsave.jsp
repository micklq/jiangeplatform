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
            <li><a href="${pageContext.request.contextPath}/county/nlist">县域登记</a></li>
            <li><a href="${pageContext.request.contextPath}/ouser/nlist">联络员登记</a></li>  
            <li><a href="${pageContext.request.contextPath}/cpschedule/nlist">日程管理</a></li>
            <li><a href="${pageContext.request.contextPath}/firstnet/plist" class="hover">网格管理</a></li> 
            </ul>
            <div class="tab_select_box3 ClearFix"	>
            	<h3 class="title_jiandu_font">三级网络维护</h3>
                <div class="forem_box_set">
                <form id="updatefm" method="post" novalidate>
                    <table cellpadding="0" cellspacing="0" class="tab_padding_t">
                    <tr>
                         <td align="right">片区：</td>
                         <td> 
                         <input type="hidden" name="id"  id="id" value="${requestScope.threenet.id}" />                              
                         <select id="areaid" name="areaid" class="easyui-combobox easyui-validatebox"  required="true" style="width:220px">
				             <c:forEach items="${areaList}" var="item" >
				             <option value="${item.id}">${item.name}</option>
				             </c:forEach>
				          </select> 
                            </td>
                        </tr>  
                        <tr>
                            <td align="right">辐射乡镇(多选)：</td>
                            <td> 
                            <input type="hidden" name="countyids" id="countyids" value="${requestScope.threenet.countyids}"> 
                             <c:forEach items="${countyList}" var="item" >    
                             <span class="spck"><input type="checkbox" class="chearc" value="${item.id}" name="countyid">${item.name}</span>				                      
                             </c:forEach>
                            </td>
                        </tr> 
                        <tr>
                         <td align="right">备注：</td>
                         <td>   
                         <textarea class="textarea_set_ss" name="description" name="description">${requestScope.threenet.description}</textarea>  
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
$("#areaid").val("${requestScope.threenet.areaid}");
	var arycids = $("#countyids").val().split(",");	
	if(arycids.length>0)
	{	
	  $('input[name="countyid"]').each(function(){		  
		    for (i=0;i<arycids.length;i++ )
			{			    	
				if(arycids[i] == $(this).val()){					
					$(this).attr("checked",true);
				}
			} 		  
	  }); 
	} 


function back(){
	location.href="${pageContext.request.contextPath}/threenet/plist";
}
function save(){
	var url;
	if($("#id").val()>0)
	{
		url="${pageContext.request.contextPath}/threenet/update";	
	}
	else
	{
		url="${pageContext.request.contextPath}/threenet/create";	
	}
	
	var ckcountyids ="";    
	  $('input[name="countyid"]:checked').each(function(){ 
		  ckcountyids+= $(this).val()+",";    
	  }); 
	 if(ckcountyids.length>0){
		 $('#countyids').val(ckcountyids); 
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
                	location.href="${pageContext.request.contextPath}/threenet/plist";                    
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
