<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
<title>欢迎访问剑阁网络管理平台-接访平台</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
</head>
<body>
<!--content-->
<div class="content_box">
    <div class="content_right3">
    	<div class="content_left_con3">
            <div class="tab_select_box">
            	<h3 class="title_jiandu_font">接访信息（共${requestScope.letterPage.dataCount}件）</h3>
            	<div class="select_cont_set">
                	<div class="l select_both">
                        <dl class="select_Set fl">
                            <dt class="flBox">请选择检查点<span></span></dt>
                            <dd>
                                <ul>
                                  <c:forEach items="${countyList}" var="item" >				             
				                   <li><a href="${pageContext.request.contextPath}/letter/nlist?cid=${item.id}">${item.name}</a></li>
				                   </c:forEach>  
                                </ul>
                            </dd>
                        </dl>
                    </div>
                    <div class="r prev_next">
                    	<a href="${pageContext.request.contextPath}/letter/nlist?page=${requestScope.letterPage.prePage}">上一页</a>
                        <span>${requestScope.letterPage.currentPage}/${requestScope.letterPage.pageCount}</span>
                        <a href="${pageContext.request.contextPath}/letter/nlist?page=${requestScope.letterPage.nextPage}">下一页</a>
                    </div>
                    <div style="height:15px;clear:both;"></div>
                    <table cellpadding="0" cellspacing="0" width="100%" class="table_lisrts" style="border-top:solid 1px #e3e3e3;">
                        <c:forEach items="${letterList}" var="p" >		
                        <tr>
                        	<td>${p.id}</td>
                            <td>${p.officename}</td>
                            <td style="text-align:left;" width="40%">${p.title}</td>
                            <td>${p.location}</td>
                            <td style="color:#9c9c9c;font-size:12px;text-align:right;">${p.eventtime}</td>
                        </tr>
                        </c:forEach> 
                        
                    </table>
                    <div class="five_btn three_contact">
                    	<a href="javascript:;">QQ接访</a>
                        <a href="javascript:;">网上举报</a>
                        <a href="javascript:;">邮箱接访</a>
                        <a href="${pageContext.request.contextPath}/letter/nsave">信息录入</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="content_right3">
    	<div class="content_left_con3">
            <div class="tab_select_box">
            	<h3 class="title_jiandu_font">联络人信息</h3>
            	<div class="select_cont_set">
                	<div class="l select_both">
                        <dl class="select_Set fl">
                            <dt class="flBox">请选择检查点<span></span></dt>
                            <dd>
                                <ul>
                                   <c:forEach items="${countyList}" var="item" >				             
				                   <li><a href="${pageContext.request.contextPath}/letter/nlist?cid=${item.id}">${item.name}</a></li>
				                   </c:forEach>  
                                </ul>
                            </dd>
                        </dl>
                    </div>
                    <div class="r prev_next">
                    	<a href="${pageContext.request.contextPath}/letter/nlist?page1=${requestScope.liaisonManPage.prePage}">上一页</a>
                        <span>${requestScope.liaisonManPage.currentPage}/${requestScope.liaisonManPage.pageCount}</span>
                        <a href="${pageContext.request.contextPath}/letter/nlist?page1=${requestScope.liaisonManPage.nextPage}">下一页</a>
                    </div>
                    <div style="height:15px;clear:both;"></div>
                    <table cellpadding="0" cellspacing="0" width="100%" class="table_lisrts" style="border-top:solid 1px #e3e3e3;">
                        <c:forEach items="${liaisonManList}" var="p">              
                       <tr>                    
                       <td>${p.id}</td>
                       <td>${p.name}</td>                               
                       <td>${p.phone}</td>
                       <td>${p.email}</td>
                       <td>${p.orgname}</td>
                       <td>${p.postname}</td>
                       <td>${p.location}</td>                
                      </tr>
                      </c:forEach> 
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
