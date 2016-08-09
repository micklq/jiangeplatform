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

<div class="content_left1">
    	<div class="content_left_con">
			<div class="bj_contentbj">
            	<p class="renqun_zhogd">民生检查重点人群</p>
                <ul class="shxjf_number_posi">
                 <!-- <li><a class="hover" href="#" class="hover">司法救助人员</a></li> -->
                 <c:forEach items="${categoryList}" var="p">                  
                  <li>&nbsp;&nbsp;&nbsp;&nbsp;<a  href="${pageContext.request.contextPath}/caringpeople/nlist?cid=${p.id}">${p.name}</a></li>  
                 </c:forEach>                    
                </ul>
                <div class="three_btn">                	
                    <a href="${pageContext.request.contextPath}/caringcategory/nlist">维护</a>
                    <a href="${pageContext.request.contextPath}/caringcategory/nsave?id=0">添加</a>
                </div>
            </div>
        </div>
    </div>
<div class="content_right1">
    	<div class="content_left_con2">
            <div class="tab_select_box">
            	<div class="select_cont_set">
                	<div class="l select_both">
                        <dl class="select_Set fl">
                            <dt class="flBox">请选择检查点<span></span></dt>
                            <dd>
                                <ul>
                                   <c:forEach items="${countyList}" var="item" >				             
				                   <li><a href="${pageContext.request.contextPath}/caringpeople/nlist?cid=${item.id}">${item.name}</a></li>
				                   </c:forEach>  
                                </ul>
                            </dd>
                        </dl>
                    </div>
                    <div class="r prev_next">
                      <a href="${pageContext.request.contextPath}/caringpeople/nlist?page=${requestScope.caringPage.prePage}">上一页</a>
                      <span>${requestScope.caringPage.currentPage}/${requestScope.caringPage.pageCount}</span>
                      <a href="${pageContext.request.contextPath}/caringpeople/nlist?page=${requestScope.caringPage.nextPage}">下一页</a>                    
                    </div>
                    <div style="height:15px;clear:both;"></div>
                    <table cellpadding="0" cellspacing="0" width="100%" class="table_lisrts">
                    	<tr>
                        	<th>ID</th>
                            <th>姓名</th>
                            <th>性别</th>                            
                            <th>监护人/责任人</th>
                            <th>电话</th>
                            <th>类别</th>
                            <th>联络点</th>   
                            <th>操作</th>                            
                        </tr>
                         <c:forEach items="${letterList}" var="p" >	
                        <tr>
                        	<td>${p.id}</td>
                            <td>${p.name}</td>
                            <td>${p.gender}</td>
                            <td>${p.guardian}</td>
                            <td>${p.mobile}</td>
                            <td>${p.categoryname}</td>
                            <td>${p.countyname}</td>  
                            <td>
                            <a href="${pageContext.request.contextPath}/caringpeople/nsave?id=${p.id}">修改 </a>
                            <a href="javascript:void(0);" onclick="del('${p.id}')">删除</a>  
                            </td>                          
                        </tr>
                        </c:forEach>                        
                    </table>
                    <!-- <div class="five_btn">
                    	<div class="prev_next" >
                            <a href="javascript:;">上一页</a>
                            <span>1/2</span>
                            <a href="javascript:;">下一页</a>
                        </div>-->
                    	<div class="three_btn thbtn_position">
                          <!--  <a href="javascript:;">删除</a>-->
                            <!--<a href="javascript:;">修改</a>-->
                            <a href="${pageContext.request.contextPath}/caringpeople/nsave?id=0">添加</a>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
    </div>

</div>
<script type="text/javascript">
function del(id){
	var url="${pageContext.request.contextPath}/caringpeople/delete?id="+id;	
	 if(confirm("确定要删除当前数据吗？"))
	 {
		 $.ajax({
	            url: url,          
	            type: "get",
	            dataType: "json",            
	            success: function (result){
	                if (result[ "success"]== true){  
	                	location.href="caringpeople/nlist";                    
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
