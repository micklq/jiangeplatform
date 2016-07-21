<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  style="background: white">
 <head>
    <title>前端用户管理</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
     <style type="text/css">
		#fm{
		margin:0;
		padding:10px 30px;
		}
		.ftitle{
		font-size:14px;
		font-weight:bold;
		padding:5px 0;
		margin-bottom:10px;
		border-bottom:1px solid #ccc;
		}
		.fitem{
		margin-bottom:5px;
		}
		.fitem label{
		display:inline-block;
		width:80px;
		}
	 </style>
     <script type="text/javascript">
	
     $(function(){ 
 	    $('#startDate').datetimebox({  
 		}); 
 		$('#endDate').datetimebox({  
 		});
 		
 	});
     
     function setDefaultPageState(){
    		$("#size").val('');
    		$("#page").val('');
    	}
     
     function selectPageSize(){
    	 setDefaultPageState();
   		$("#size").val($("#selectsize").val());
   		$("#userform").attr("method","POST");
   		$("#userform").submit();
   	}

   	function selectPage(p){
   		$("#page").val(p); 
   		$("#userform").attr("method","POST");
   		$("#userform").submit();
   	}
    	
	function doSearch(){
		
	}
	
	function doClickSearch(value,name){
		setDefaultPageState();
		$("#userform").attr("method","POST"); 
		$("#userform").submit();
	}
</script>
<script type="text/javascript" src="js/rl/WdatePicker.js"></script>
  </head>
<body>
<div style="padding-left:20px;width:97%">
<h2>前端用户管理</h2>
<hr/>  
<form action="user/frontUserlist" id="userform" method="POST" >
<div>
	
	 地址&nbsp;&nbsp;<input class="easyui-textbox" name="addr" id="addr"  style="width:150px"  value="${addr}" ></input>
	
	&nbsp;&nbsp;&nbsp;&nbsp;性别
	<select id="sex" name="sex" onchange="">
      <option <c:if test="${empty sex }">selected</c:if>   value="">全部</option> 
      <option <c:if test="${sex=='1'}">selected</c:if> value="1">男</option>
      <option <c:if test="${sex=='0'}">selected</c:if> value="0">女</option>
      <option <c:if test="${sex=='2'}">selected</c:if> value="2">不想说</option>
    </select>
    
  	 &nbsp;&nbsp;&nbsp;&nbsp; 注册时间&nbsp;&nbsp;
    <input  name="startDate"  id="startDate" type="text"  style="width:150px"  value="${startDate}"  />
    -
    <input  name="endDate" id="endDate"  style="width:150px"  value="${endDate}"  />
    
    	&nbsp;&nbsp;&nbsp;&nbsp;用户状态&nbsp;&nbsp;
    <select id="stat" name="stat" onchange="">
      <option   value="">全部</option> 
      <option <c:if test="${stat==0}">selected</c:if> value="0">已激活</option>
      <option <c:if test="${stat==1}">selected</c:if> value="1">禁言</option>
      <option <c:if test="${stat==2}">selected</c:if> value="2">封号</option>
    </select>
    
   	 &nbsp;&nbsp;&nbsp;&nbsp;用户等级&nbsp;&nbsp;
    <select id="vipStat" name="vipStat" onchange="">
      <option   value="">全部</option> 
      <option <c:if test="${vipStat==0}">selected</c:if> value="0">普通</option>
      <option <c:if test="${vipStat==1}">selected</c:if> value="1">蓝V</option>
      <option <c:if test="${vipStat==2}">selected</c:if> value="2">黄V</option>
    </select>
	
	&nbsp;&nbsp;&nbsp;&nbsp;
	
	注册手机号&nbsp;&nbsp;
	<input class="easyui-textbox" name="phone" id="phone"  style="width:150px"  value="${phone}" ></input>
	
	用户名&nbsp;&nbsp;
	<input class="easyui-textbox" name="name" id="name"  style="width:100px"  value="${name}" ></input>
	&nbsp;&nbsp;&nbsp;&nbsp;
	<input  name="sub" id="sub"  style="" type="button" onclick="doClickSearch();"  value="搜索"/>

<div style="float:right;width:250px;text-align:right">每页显示条数
	<select id="selectsize" onchange="selectPageSize()">
        <option <c:if test="${pageinfo.size==10}">selected</c:if>  value="10">10</option> 
        <option <c:if test="${pageinfo.size==20}">selected</c:if> value="20">20</option>
        <option <c:if test="${pageinfo.size==50}">selected</c:if> value="50">50</option>
        <option <c:if test="${pageinfo.size==100}">selected</c:if> value="100">100</option>
      </select>
</div>

</div> 
<input type="hidden" name="size" id="size" value="${pageinfo.size}"/>
<input type="hidden" name="page" id="page" value="${pageinfo.number}"/>
<input type="hidden" name="status" id="status" value="${status}"/>
<input type="hidden" name="videoIds" id="videoIds"/>
</form>
<hr>
<table  style="width: 100%;border-top:1px solid #000;border-left:1px solid #000;"    > 
<tr style="line-height: 20px;" >
		<td  style="vertical-algn: middle;border-right:1px solid #000;border-bottom:1px solid #000;width: 3%; "  >
			<span style="font-size:15px;font-weight:bold;">序号 </span>
		</td>
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;width: 12%;">
			<span style="font-size:15px;font-weight:bold;">用户名</span>
		</td>
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;width: 5%;">
			<span style="font-size:15px;font-weight:bold;">用户ID</span>
		</td>
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;width: 8%;"  >
			<span style="font-size:15px;font-weight:bold;">手机号</span>
		</td>
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;width: 10%;"  >
			<span style="font-size:15px;font-weight:bold;">注册时间</span>
		</td>
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;width: 15%;"  >
			<span style="font-size:15px;font-weight:bold;">所在地</span>
		</td>
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;width: 6%;"  >
			<span style="font-size:15px;font-weight:bold;">发布视频数</span>
		</td>
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;width: 3%;"  >
			<span style="font-size:15px;font-weight:bold;">用户状态</span>
		</td>
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;width: 3%;"  >
			<span style="font-size:15px;font-weight:bold;">用户等级</span>
		</td>
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;width: 10%;"  >
			<span style="font-size:15px;font-weight:bold;">最后登录时间</span>
		</td>
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;width: 5%;"  >
			<span style="font-size:15px;font-weight:bold;">操作</span>
		</td>
	</tr>  
<c:forEach items="${frontUserList}" var="fUser" varStatus="status" >
	<tr style="line-height: 30px;" >
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;" width="50px"  >
				${status.count} 
		</td>
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;" width="300px"  title="${fUser.name}" >
				${fUser.name} 
		</td>
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;" width="60px"  title="${fUser.id}" >
				${fUser.id} 
		</td>
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;" width="100px"   >
				${fUser.phone} 
		</td>
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;" width="150px"   >
				<fmt:formatDate value="${fUser.createDateStr}" pattern="yyyy-MM-dd HH:mm:ss"/> 
		</td>
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;"  >
				${fUser.addr} 
		</td>
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;" width="50px"   >
				${fUser.videoCount} 
		</td>
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;" width="50px"   >
			<c:if test="${fUser.stat eq 0 }">
				已激活
			</c:if>
			<c:if test="${fUser.stat eq 1 }">
				禁言
			</c:if>
			<c:if test="${fUser.stat eq 2 }">
				封号
			</c:if>
		</td>
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;" width="80px"   >
			<c:if test="${fUser.vipStat eq 0 }">
				普通
			</c:if>
			<c:if test="${fUser.vipStat eq 1 }">
				蓝V
			</c:if>
			<c:if test="${fUser.vipStat eq 2 }">
				黄V
			</c:if>
		</td>
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;" width="150px"   >
			<fmt:formatDate value="${fUser.loginDate}" type="date" pattern="yyyy-MM-dd HH:mm:ss"/>
		</td>
		<td  style="vertical-align: middle;border-right:1px solid #000;border-bottom:1px solid #000;" width="300px"  >
			<a href="video/userdetail?uid=${fUser.id}" style="width:120px;"   >查看</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<c:if test="${false }">
				<a href="javascript:void(0);" style="width:120px;"  onclick="changeLogoState(this,'${fUser.id}',1);" >封号</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="javascript:void(0);" style="width:120px;"  onclick="changeLogoState(this,'${fUser.id}',1);" >禁言</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</c:if>
		</td>
	</tr>
</c:forEach>
</table> 
<br/>
<div style="float:left">
	<span id="page">  
	<a href="javascript:selectPage('1');">首页</a>
	<c:if test="${pageinfo.number-1>0}">
	<a href="javascript:selectPage('${pageinfo.number-1}');">上一页</a>
	</c:if>
	<c:if test="${pageinfo.totalPages<=7}"> 
	 	<c:set var="endNum" scope="request" value="${pageinfo.totalPages}"/>
	</c:if>
	<c:if test="${pageinfo.number>=4&&pageinfo.number+3<=pageinfo.totalPages}"> 
	 	<c:set var="endNum" scope="request" value="${pageinfo.number+3}"/>
	</c:if>
	<c:if test="${pageinfo.number>=4&&pageinfo.number+3>pageinfo.totalPages}"> 
	 	<c:set var="endNum" scope="request" value="${pageinfo.totalPages}"/>
	</c:if>
	<c:if test="${pageinfo.number<=3&&pageinfo.totalPages>7}">
	 	<c:set var="endNum" scope="request" value="7"/>
	</c:if> 
	<c:forEach var="i" begin="${pageinfo.number>3?pageinfo.number-3:1}"  end="${endNum}" step="1">  
		<a href="javascript:selectPage('${i}');">${i}</a>  
	</c:forEach> 
	<c:if test="${pageinfo.number<pageinfo.totalPages}">
	<a href="javascript:selectPage('${pageinfo.number+1}');">下一页</a>
	</c:if>
	<a href="javascript:selectPage('${pageinfo.totalPages}');">尾页</a>
	</span>
</div>
<br/><br/><br/>
</div>
</body>
</html>
