<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
            	<h3 class="title_jiandu_font" style="border-bottom:none;">接访信息详情</h3>
            	<div class="zhaiyao_set">
                	${requestScope.letter.title}
                    <p>联络人：<span>${requestScope.letter.officename}</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                   地点：<span>${requestScope.letter.location}</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                                                   时间：<span>${requestScope.letter.eventtime}</span>
                    </p>
                </div>
            <div class="contentbox_set_box"> 
             ${requestScope.letter.description}                  	
            </div>
            <h3 class="title_jiandu_font" style="border-bottom:none;">评论回复</h3>
            <div class="textareea_set">
            	<ul class="list_pinglun">
            	 <c:forEach items="${replyList}" var="p" >		
            	 <li>${p.description}<span>［${p.createDateStr}］</span></li>                        
                 </c:forEach>                      
                </ul>
                 <form id="updatefm" method="post" novalidate>
                <textarea class="textarea_set_ss"></textarea>
                <p class="twobtn_set"><a href="javascript:void(0);" onclick="save()">提交回复</a><a href="javascript:void(0);" onclick="back()">返回</a></p>
                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
$("#locationid").val("${requestScope.letter.locationid}");
$("#officeid").val("${requestScope.letter.officeid}");
function back(){
	location.href="${pageContext.request.contextPath}/letter/nlist";
}
function save(){
	var url="${pageContext.request.contextPath}/letterreply/create";	
	
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
                	location.href="${pageContext.request.contextPath}/letter/nlist";                    
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
