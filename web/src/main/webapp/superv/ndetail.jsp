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
                    <div class="zhaiyao_set" style="background:none;border-bottom:solid 1px #ddd;">${requestScope.superv.title}                    
                        <p>发布人：<span>${requestScope.superv.officename}</span> &nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                                联络点：<span>${requestScope.superv.location}</span> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                                                                 时间：<span>${requestScope.superv.createDateStr}</span></p>
                    </div>
                    <div class="contentbox_set_box">
                     ${requestScope.superv.description}  
                   </div>
                <h3 class="title_jiandu_font" style="border-bottom:none;">评论回复</h3>
                <div class="textareea_set">
                    <ul class="list_pinglun">
                    <c:forEach items="${replyList}" var="p" >		
            	    <li>${p.replyuser}:${p.description}<span>［${p.createDateStr}］</span></li>                        
                    </c:forEach>                          
                    </ul>
                    <form id="updatefm" method="post" novalidate>
                    <input type="hidden" name="id"/>
                     <input type="hidden" id="supervid" name="supervid" value="${requestScope.superv.id}"/> 
                    <textarea id="description" name="description" class="textarea_set_ss easyui-validatebox"  required="true"></textarea>
                    <p class="twobtn_set"><a href="javascript:void(0);" onclick="save()">提交回复</a><a href="javascript:void(0);" onclick="back()">返回</a></p>
                </div>
                </div>
            </div>
        </div>
    </div>
    <div class="content_right12">
    	<div class="content_left_con2">
            <div class="tab_select_box" style="padding:0.2%;">
            	<h3 class="jdry_bottom_title">监督人员（18）</h3>
                <ul class="ul_li_box">                
                     <c:forEach items="${souList}" var="p" >		
                     <li>
                    	<img src="${pageContext.request.contextPath}/image/head1.png" class="header_set" />
                        <p>${p.name}<b>${p.orgname}</b><span>${p.postname}</span></p>
                        <!-- <a href="javascript:;" class="cheak_a"><input type="checkbox" /></a> -->
                    </li>
                    </c:forEach>       
                            	
                </ul>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
$("#locationid").val("${requestScope.letter.locationid}");
$("#officeid").val("${requestScope.letter.officeid}");
function back(){
	location.href="${pageContext.request.contextPath}/superv/nlist";
}
function save(){
	var url="${pageContext.request.contextPath}/supervreply/create";	
	
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
                    location.reload(true);  
                	//location.href="${pageContext.request.contextPath}/letter/ndetail";                    
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
