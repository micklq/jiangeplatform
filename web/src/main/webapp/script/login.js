function clickButton() {
		$.ajax({
			url : 'login/loginAjax',
			data : getFormJson('#myform'),
			type : "post",
			dataType : "json",
			beforeSend : function() {
				return $('#myform').form('enableValidation').form('validate');
			},
			success : function(result) {
				if (result["result"] == "success") {
					location.href = "index/welcome";
				} else {
					showMessage("Error", result["message"]);
				}
			}
		});
	}

	$(function() {
		$(':input[type="password"]').change(function(){
			$(":input[name='password']").val($(this).val());
		});
		document.onkeydown = function(e){  
		    var ev = document.all ? window.event : e;   
		    if(ev.keyCode==13) {        
		    	$(':input[type="password"]').trigger("change");                 
		        clickButton();
		    }                                           
		}                                               
	}); 