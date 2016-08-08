<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
<title>欢迎访问剑阁网络管理平台-监督平台</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
</head>
<body>
<!--content-->
<div class="content_box">
    <div class="content_right2">
    	<div class="content_left_con2">
            <div class="tab_select_box">
            	<h3 class="title_jiandu_font">监督信息（共${requestScope.letterPage.dataCount}件）</h3>
            	<div class="select_cont_set">
                	<div class="l select_both">
                        <dl class="select_Set fl">
                            <dt class="flBox">请选择检查点<span></span></dt>
                            <dd>
                                <ul>
                                   <c:forEach items="${countyList}" var="item" >				             
				                   <li><a href="${pageContext.request.contextPath}/superv/nlist?cid=${item.id}">${item.name}</a></li>
				                   </c:forEach>                                     
                                </ul>
                            </dd>
                        </dl>
                    </div>
                    <div class="r prev_next">
                    	<a href="${pageContext.request.contextPath}/superv/nlist?page=${requestScope.supervPage.prePage}">上一页</a>
                        <span>${requestScope.supervPage.currentPage}/${requestScope.supervPage.pageCount}</span>
                        <a href="${pageContext.request.contextPath}/superv/nlist?page=${requestScope.supervPage.nextPage}">下一页</a>
                    </div>
                    <div style="height:15px;clear:both;"></div>
                    <table cellpadding="0" cellspacing="0" width="100%" class="table_lisrts" style="border-top:solid 1px #e3e3e3;">
                         <c:forEach items="${letterList}" var="p" >		
                        <tr>
                        	<td>${p.id}</td>
                            <td>
                            <a href="${pageContext.request.contextPath}/superv/ndetail?id=${p.id}" target="_blank">
                            ${p.officename}
                            </a></td>
                            <td style="text-align:left;" width="40%">
                            <a href="${pageContext.request.contextPath}/superv/ndetail?id=${p.id}" target="_blank">
                            ${p.title}
                            </a>
                            </td>
                            <td>
                            <a href="${pageContext.request.contextPath}/superv/ndetail?id=${p.id}" target="_blank">
                            ${p.location}
                            </a>
                            </td>
                            <td style="color:#9c9c9c;font-size:12px;text-align:right;">${p.eventtime}</td>
                            <td>
                            <a href="${pageContext.request.contextPath}/superv/nsave?id=${p.id}">修改 </a>
                            <a href="javascript:void(0);" onclick="del('${p.id}')">删除</a>  
                            </td>
                        </tr>
                        </c:forEach>                         
                    </table>
                    <div class="five_btn">
                    	<!-- <div class="prev_next" >
                            <a href="javascript:;">上一页</a>
                            <span>1/2</span>
                            <a href="javascript:;">下一页</a>
                        </div> -->
                    	<div class="three_btn thbtn_position">
                            <!-- <a href="javascript:;">删除</a>
                            <a href="javascript:;">修改</a> -->
                            <a href="javascript:;">添加</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
function del(id){
	var url="${pageContext.request.contextPath}/superv/delete?id="+id;	
	 if(confirm("确定要删除当前数据吗？"))
	 {
		 $.ajax({
	            url: url,          
	            type: "get",
	            dataType: "json",            
	            success: function (result){
	                if (result["success"]== true){  
	                	location.href="superv/nlist";                    
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
