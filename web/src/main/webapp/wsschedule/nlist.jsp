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
    <ul class="table_add">    
     <li><a href="${pageContext.request.contextPath}/areamanage/nlist">片区管理</a></li>
     <li><a href="${pageContext.request.contextPath}/org/nlist">科室管理</a></li>
     <li><a href="${pageContext.request.contextPath}/county/nlist">县域登记</a></li>
     <li><a href="${pageContext.request.contextPath}/ouser/nlist">联络员登记</a></li>  
     <li><a href="${pageContext.request.contextPath}/cpschedule/nlist" class="hover">日程管理</a></li> 
    </ul>
    <div class="tab_select_box3 ClearFix">
        <h3 class="title_jiandu_font" style="border-bottom:none;">日程管理<a href="${pageContext.request.contextPath}/wsschedule/nsave?id=0" class="add_tianji_keshi">添加工作站+</a></h3>
        <ul class="tab_nav_sfs">
        	<li><a href="${pageContext.request.contextPath}/cpschedule/nlist">民生检察点</a></li>
            <li><a class="hover" href="${pageContext.request.contextPath}/wsschedule/nlist">阳光工作站</a></li>                    
        </ul>
        <div class="box_tabls">
          <div class="r prev_next" style="margin:10px;">
            <a href="${pageContext.request.contextPath}/wsschedule/nlist?page=${requestScope.prePage}">上一页</a>
            <span>${requestScope.currentPage}/${requestScope.pageCount}</span>
            <a href="${pageContext.request.contextPath}/wsschedule/nlist?page=${requestScope.nextPage}">下一页</a>
          </div>
            <!--工作站-->
            <div class="forem_box_set1 tabse_se">                
                <table cellpadding="0" cellspacing="0" class="tab_padding_t1">
                    <tr>                        
                        <th>ID</th>          
                        <th>学校</th>    
                        <th>工作时间</th> 
                        <th>联络科室 </th> 
                        <th>挂包领导 </th> 
                        <th>联络人</th> 
                        <th>操作</th>
                    </tr>
                    <c:forEach items="${wssList}" var="p">                  
                    <tr>                        
                        <td>${p.id}</td>
                        <td>${p.schoolname}</td>                       
                        <td>${p.worktime}</td>  
                        <td>${p.orgname}</td>
                        <td>${p.leadname}</td>                       
                        <td>${p.officename}</td>  
                        <td>
                        <a href="${pageContext.request.contextPath}/wsschedule/nsave?id=${p.id}">修改 </a>
                        <a href="javascript:void(0);" onclick="del('${p.id}')">删除</a>
                        </td>
                    </tr>  
                    </c:forEach> 
                </table>
            </div>
            <!--工作站-->
        </div>
    </div>
</div>	
<script type="text/javascript">
function del(id){
	var url="${pageContext.request.contextPath}/wsschedule/delete?id="+id;	
	 if(confirm("确定要删除当前数据吗？"))
	 {
		 $.ajax({
	            url: url,          
	            type: "get",
	            dataType: "json",            
	            success: function (result){
	                if (result[ "success"]== true){  
	                	location.href="${pageContext.request.contextPath}/wsschedule/nlist";                    
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
