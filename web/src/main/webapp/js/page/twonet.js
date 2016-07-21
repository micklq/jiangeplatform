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
     var listUrl="twonet/listpage";
     var updateUrl="twonet/update";
     var deleteUrl="twonet/delete";
     var addUrl="twonet/create";     
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
					{field:'leadname',title:'挂包领导',width:100},	
					{field:'contactnames',title:'联络点',width:150},	
					{field:'orgnames',title:'科室',width:100},
					{field:'officenames',title:'责任人',width:150}					
			    ]],
	    onLoadSuccess:function(){
	    	$(this).datagrid('enableDnd');
	    }
		});
	});
	function destroyTwoNetwork(){
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
	
	function newTwoNetwork(){
		$(adddialogueId).dialog('open').dialog('setTitle',addTitle);
		url = addUrl;
		$(addFormId).form('clear');
		$('#name').val('');
		$('#description').val('');
		
	}
	function editTwoNetwork(){
		var row = $(datagridId).datagrid('getSelected');
		if (row){
			$(editdialogueId).dialog('open').dialog('setTitle',editTitle);			
			
			$(editFormId).form('load',row);
			url = updateUrl;
		}else{
			showMessage("Error",noSelectedRowMessage);
		}
	}
	function saveTwoNetwork(mydialogueId,myFormId){
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