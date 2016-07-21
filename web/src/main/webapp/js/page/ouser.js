var datagridId="#tt";
     var adddialogueId="#dlg";
     var editdialogueId="#updatedlg";
     var addFormId="#fm";
     var editFormId="#updatefm";
     var addTitle="新增";
     var editTitle="编辑";
     var deleteConfirmMessage="你确定要删除吗?";
     var noSelectedRowMessage="你没有选择行";
     var searchFormId="#searchForm";
     var pageSize=50;
     var listUrl="ouser/listpage";
     var updateUrl="ouser/update";
     var deleteUrl="ouser/delete";
     var addUrl="ouser/create";     
     var url;
	$(function() {
		$(datagridId).datagrid({
				fitColumns:true,
				rownumbers : true,
			    striped: true, 			    
			    pagination : true,
			    pageNumber : 1,
			    pageList : [pageSize,pageSize*2,pageSize*3],
			    pageSize : pageSize,
			    pagePosition : 'bottom',
			    singleSelect : true,
			    selectOnCheck:true,
			    nowrap:true,
			    fit:true,
			    url:listUrl,
	    columns:[[
	                {field:'id',title:'ID',width:80},
					{field:'name',title:'姓名',width:100},
					{field:'gender',title:'性别',width:80},
					{field:'phone',title:'电话',width:150},
					{field:'email',title:'邮箱',width:150},
					{field:'orgname',title:'科室',width:100},
					{field:'postname',title:'职务',width:100},
					{field:'others',title:'说明',width:100}	
			    ]],
	    onLoadSuccess:function(){
	    	$(this).datagrid('enableDnd');
	    }
		});
	});
	function destroyOfficeUser(){
		var row = $(datagridId).datagrid('getSelected');
		if (row){
			$.messager.confirm('Confirm',deleteConfirmMessage,function(r){
				if (r){
					$.get(deleteUrl,{id:row.id},function(result){
						if (result["success"]==true){
							$(datagridId).datagrid('reload'); // reload the user data
						} else {
							showMessage("Error",result["message"]);
						}
					});
				}
			});
		}else{
			showMessage("Error",noSelectedRowMessage);
		}
	}
	
	function newOfficeUser(){
		$(adddialogueId).dialog('open').dialog('setTitle',addTitle);
		url = addUrl;
		$(addFormId).form('clear');
		$('#name').val('');
		$('#description').val('');
		
	}
	function editOfficeUser(){
		var row = $(datagridId).datagrid('getSelected');
		if (row){
			$(editdialogueId).dialog('open').dialog('setTitle',editTitle);			
			
			$(editFormId).form('load',row);
			url = updateUrl;
		}else{
			showMessage("Error",noSelectedRowMessage);
		}
	}
	function saveOfficeUser(mydialogueId,myFormId){
		$.ajax({
            url: url,
            data: getFormJson( myFormId),
            type: "post",
            dataType: "json",
            beforeSend: function(){
             return $( myFormId).form( 'validate');
            },
            success: function (result){
                if (result[ "success"]== true){
                    $( mydialogueId).dialog( 'close'); // close the dialog
                    $( datagridId).datagrid( 'reload'); // reload the user data
                } else {
                	showMessage( "错误提示",result["result"],3000);
                }
            },
            error:function (result){
            	showMessage( "Error",JSON.stringify(result),5000);
            }
        });
	}