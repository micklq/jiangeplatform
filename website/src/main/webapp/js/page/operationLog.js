var datagridId="#tt";
     var searchFormId="#searchForm";
     var pageSize=50;
     
     var listUrl="operationLog/listpage?filters['moduleTypeEq']=myvideo_restadmin";
     
	$(function() {
		$(datagridId).datagrid({
		fitColumns:true,
		rownumbers : true,
	    striped: true, 
	    pagination : true,
	    pageNumber : 1,
	    fit:true,
	    pageList : [pageSize,pageSize*2,pageSize*3],
	    pageSize : pageSize,
	    pagePosition : 'bottom',
	    singleSelect : true,
	    selectOnCheck:false,
	    nowrap:true,
	    url:listUrl,
	    columns:[[
					{field:'reqUrl',title:'请求url',width:100},
					{field:'description',title:'操作描述',width:100},
					{field:'objectid',title:'对象id',width:100},
					{field:'uid',title:'操作用户id',width:100},
					{field:'uname',title:'操作用户名称',width:100},
			    ]],
		});
		
		
	});

	function doSearch(){
		$(datagridId).datagrid('reload',getFormJson( searchFormId));
	}