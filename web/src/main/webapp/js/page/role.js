var datagridId="#tt";
     var adddialogueId="#dlg";
     var editdialogueId="#updatedlg";
     var addFormId="#fm";
     var editFormId="#updatefm";
     var addTitle="新增角色";
     var editTitle="编辑角色";
     var deleteConfirmMessage="你确定要删除吗?";
     var noSelectedRowMessage="你没有选择行";
     var searchFormId="#searchForm";
     var pageSize=50;
     
     var listUrl="role/listpage";
     var updateUrl="role/update";
     var deleteUrl="role/delete";
     var addUrl="role/create";
     
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
	    selectOnCheck:false,
	    nowrap:true,
	    fit:true,
	    url:listUrl,
	    columns:[[
					{field:'name',title:'角色名称',width:100},
					{field:'description',title:'描述',width:100},
					//{field:'isSystem',title:'系统角色',width:100,formatter:function(value,row,index){
					//	if(value == 0) return '否';
					//	if(value == 1) return '是';
					//}}
			    ]],
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
		$(addFormId).form('clear');
		$(adddialogueId).dialog('open').dialog('setTitle',addTitle);
		url = addUrl;
		$("#permissionTree").tree({
			url:'role/permissionListAjax',
			method:'get',
			animate:true,
			checkbox:true
		});
	}
	
	function editUser(){
		var row = $(datagridId).datagrid('getSelected');
		if (row){
			
			$(editdialogueId).dialog('open').dialog('setTitle',editTitle);
			$(editFormId).form('load',row);
			url = updateUrl;
			
			$("#editPermissionTree").tree({
				url:'role/permissionListAjax',
				method:'get',
				animate:true,
				checkbox:true,
				onlyLeafCheck:true,
				onLoadSuccess:function(onLoadSuccess){
					$.get("role/get",{id:row.id},function(result){
						if (result["success"]==true){
							var pids=result["result"];
							for(var i=0;i<pids.length;i++){
								var node = $('#editPermissionTree').tree('find',pids[i]);
								$('#editPermissionTree').tree('check', node.target);
							}
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
	
	function saveUser(mydialogueId,myFormId,permissionTreeId){
		//获取选择的权限树
		var nodes = $(permissionTreeId).tree('getChecked');
        var s = '';
        for(var i=0; i<nodes.length; i++){
            if (s != '') s += ',';
            s += nodes[i].id;
        }
        if($.trim(s)==''){
        	showMessage("错误","请为角色分配权限");
	        return;
        }
		
		var formJson=getFormJson( myFormId);
		formJson["permissionId"]=s;
        
		$.ajax({
            url: url,
            data: formJson,
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
                    showMessage( "Error",result[ "message"]);
                }
            }
        });
	}
	
	function doSearch(){
		$(datagridId).datagrid('reload',getFormJson( searchFormId));
	}