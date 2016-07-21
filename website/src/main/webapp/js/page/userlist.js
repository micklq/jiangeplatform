var datagridId="#tt";
     var adddialogueId="#dlg";
     var editdialogueId="#updatedlg";
     var addFormId="#fm";
     var editFormId="#updatefm";
     var addTitle="新增用户";
     var editTitle="编辑用户";
     var deleteConfirmMessage="你确定要删除吗?";
     var noSelectedRowMessage="你没有选择行";
     var searchFormId="#searchForm";
     var pageSize=50;
     var listUrl="user/listpage";
     var updateUrl="user/update";
     var deleteUrl="user/delete";
     var addUrl="user/create";
     var url;
     
	$(function() {
		$(datagridId).datagrid({
		fitColumns:true,
		rownumbers : true,
	    striped: true, 
	    fit:true,
	    pagination : true,
	    pageNumber : 1,
	    pageList : [pageSize,pageSize*2,pageSize*3],
	    pageSize : pageSize,
	    pagePosition : 'bottom',
	    singleSelect : true,
	    selectOnCheck:true,
	    nowrap:true,
	    url:listUrl,
	    columns:[[
// 					{field:'ck',checkbox:true},
					{field:'username',title:'用户名',width:100},
					{field:'id',title:'用户ID',width:80},
					{field:'isEnabled',title:'账户状态',align:'center',width:50,formatter:function(value,row,index){
						if(value == 0) return '不可用';
						if(value == 1) return '可用';
					}},  
					{field:'isLocked',title:'锁定状态',align:'center',width:50,formatter:function(value,row,index){
						if(value == 0) return '未锁定';
						if(value == 1) return '已锁定';
					}}
			    ]],
	    onLoadSuccess:function(){
	    	$(this).datagrid('enableDnd');
	    }
		});
	});

	var url;

	function destroyUser(){
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
	
	function newUser(){
		$(adddialogueId).dialog('open').dialog('setTitle',addTitle);
		url = addUrl;
		$(addFormId).form('clear');
		$('#isEnabled').val('1');
		$('#isLocked').val('0');
		$('#type').val('admin');
		
		$('#addrolelist').combobox({
			valueField: 'id',
	        textField: 'name',
	        multiple:true,
            panelHeight:'auto',
	        url: 'user/rolelistAjax'
		});
		
	}
	
	function editUser(){
		var row = $(datagridId).datagrid('getSelected');
		if (row){
			$(editdialogueId).dialog('open').dialog('setTitle',editTitle);
			$('#editrolelist').combobox({
				valueField: 'id',
		        textField: 'name',
		        multiple:true,
	            panelHeight:'auto',
		        url: 'user/rolelistAjax'
			});
			
			$.get(
			"user/roleListByUserAjax",
			{id:row.id},
			function (result){
				for (var i = 0; i < result.length; i++) {
					$('#editrolelist').combobox('select', result[i]["id"]);
				}
			});
			
			$(editFormId).form('load',row);
			url = updateUrl;
		}else{
			showMessage("Error",noSelectedRowMessage);
		}
	}
	
	function saveUser(mydialogueId,myFormId){
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
	
	function doSearch(){
		$(datagridId).datagrid('reload',getFormJson( searchFormId));
	}