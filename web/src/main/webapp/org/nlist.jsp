<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
<title>欢迎访问剑阁网络管理平台-科室管理</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
</head>
<body>
<!--content-->
<div class="content_box">
    <ul class="table_add">
        <li><a href="${pageContext.request.contextPath}/areamanage/nlist">片区管理</a></li>
        <li><a href="${pageContext.request.contextPath}/org/nlist" class="hover">科室管理</a></li>
        <li><a href="${pageContext.request.contextPath}/county/nlist">县域登记</a></li>
        <li><a href="${pageContext.request.contextPath}/ouser/nlist">联络员登记</a></li>     
        <li><a href="${pageContext.request.contextPath}/cpschedule/nlist">日程管理</a></li>
        <li><a href="${pageContext.request.contextPath}/firstnet/plist">网格管理</a></li>      
    </ul>
    <div class="tab_select_box3 ClearFix">
        <h3 class="title_jiandu_font" style="border-bottom:none;">科室管理<a href="${pageContext.request.contextPath}/org/nsave?id=0" class="add_tianji_keshi">添加科室+</a></h3>
        <ul class="tab_nav_sfs">
        	<li><a class="hover" href="${pageContext.request.contextPath}/org/nlist">科室</a></li>            
            <li><a href="${pageContext.request.contextPath}/orgpost/nlist">职务</a></li>            
        </ul>
        <div class="box_tabls">
         <div class="r prev_next" style="margin:10px;">
          <a href="${pageContext.request.contextPath}/org/nlist?page=${requestScope.prePage}">上一页</a>
          <span>${requestScope.currentPage}/${requestScope.pageCount}</span>
          <a href="${pageContext.request.contextPath}/org/nlist?page=${requestScope.nextPage}">下一页</a>
         </div>
        <div class="forem_box_set1 tabse_se">
            <table cellpadding="0" cellspacing="0" class="tab_padding_t1">
                <tr>   
                    <th>科室Id</th>                      
                    <th>科室名称</th>
                    <th>操作</th>
                </tr>
                 <c:forEach items="${orgList}" var="p">                
                <tr>                    
                    <td>${p.id}</td>
                    <td>${p.name}</td>                            
                    <td>
                    <a href="${pageContext.request.contextPath}/org/nsave?id=${p.id}">修改 </a>
                    <a href="javascript:void(0);" onclick="del('${p.id}')">删除</a>                   
                    </td>
                </tr>
               </c:forEach>     
                                
            </table>
        </div>
    
        </div>  
    </div>    
</div>
<script type="text/javascript">
function del(id){
	var url="${pageContext.request.contextPath}/org/delete?id="+id;	
	 if(confirm("确定要删除当前数据吗？"))
	 {
		 $.ajax({
	            url: url,          
	            type: "get",
	            dataType: "json",            
	            success: function (result){
	                if (result["success"]== true){  
	                	location.href="org/nlist";                    
	                } else {
	                	showMessage( "错误提示",result["result"],3000);
	                }
	            },
	            error:function (result){
	            	showMessage( "Error",JSON.stringify(result),5000);
	            }
	        });
	 }
	
	}
</script>
</body>
</html>
