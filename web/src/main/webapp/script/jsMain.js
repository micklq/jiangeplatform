//将form中的值转换为键值对。
function getFormJson(frm) {
    var o = {};
    var a = $(frm).serializeArray();
    $.each(a, function () {
        if (o[this.name] !== undefined) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });

    return o;
}

function showMessage(title,message,timeout){
	if(!timeout){
		timeout=2000;
	}
	$.messager.show({ // show error message
		title: title,
		msg: message,
		timeout:timeout,
		style:{
			right:'',
			top:document.body.scrollTop+document.documentElement.scrollTop,
			bottom:''
		}
	});
}

$(function(){
	var hod = $(window).height()-140;	
    $(".content_box").height(hod);
	$(".box_tab").height(hod-40);
	
	//tab
	$(".nav_tab li").eq(0).addClass("hover");
	$(".box_tab").find(".public_div").eq(0).show();
	$(".nav_tab li").click(function(){
		var index = $(this).index();
		$(this).addClass("hover").siblings().removeClass("hover")
		$(".box_tab").find(".public_div").eq(index).show().siblings().hide();
	})
	
	//tab
	//$(".tab_nav_sfs li a").eq(0).addClass("hover");
	$(".box_tabls").find(".tabse_se").eq(0).show();
	$(".tab_nav_sfs li").click(function(){
		var index = $(this).index();
		$(this).find("a").addClass("hover").parent().siblings().children("a").removeClass("hover")
		$(".box_tabls").find(".tabse_se").eq(index).show().siblings().hide();
	})
	
	//select
	$(".select_Set").each(function(){
		var s=$(this);
		var z=parseInt(s.css("z-index"));
		var dt=$(this).children("dt");
		var dd=$(this).children("dd");
		var _show=function(){dd.slideDown(200);dt.addClass("cur");s.css("z-index",z+1);};   //展开效果
		var _hide=function(){dd.slideUp(200);dt.removeClass("cur");s.css("z-index",z);};    //关闭效果
		dt.click(function(){dd.is(":hidden")?_show():_hide();});
		dd.find("a").click(function(){dt.html($(this).html());_hide();});     //选择效果（如需要传值，可自定义参数，在此处返回对应的"value"值 ）
		$("body").click(function(i){ !$(i.target).parents(".select_Set").first().is(s) ? _hide():"";});
	});
	
	//select
	$(".select_Set1").each(function(){
		var s=$(this);
		var z=parseInt(s.css("z-index"));
		var dt=$(this).children("dt");
		var dd=$(this).children("dd");
		var _show=function(){dd.slideDown(200);dt.addClass("cur");s.css("z-index",z+1);};   //展开效果
		var _hide=function(){dd.slideUp(200);dt.removeClass("cur");s.css("z-index",z);};    //关闭效果
		dt.click(function(){dd.is(":hidden")?_show():_hide();});
		dd.find("a").click(function(){dt.html($(this).html());_hide();});     //选择效果（如需要传值，可自定义参数，在此处返回对应的"value"值 ）
		$("body").click(function(i){ !$(i.target).parents(".select_Set1").first().is(s) ? _hide():"";});
	});
	
	//select
	$(".select_Set2").each(function(){
		var s=$(this);
		var z=parseInt(s.css("z-index"));
		var dt=$(this).children("dt");
		var dd=$(this).children("dd");
		var _show=function(){dd.slideDown(200);dt.addClass("cur");s.css("z-index",z+1);};   //展开效果
		var _hide=function(){dd.slideUp(200);dt.removeClass("cur");s.css("z-index",z);};    //关闭效果
		dt.click(function(){dd.is(":hidden")?_show():_hide();});
		dd.find("a").click(function(){dt.html($(this).html());_hide();});     //选择效果（如需要传值，可自定义参数，在此处返回对应的"value"值 ）
		$("body").click(function(i){ !$(i.target).parents(".select_Set2").first().is(s) ? _hide():"";});
	});
	
	//select
	$(".select_Set3").each(function(){
		var s=$(this);
		var z=parseInt(s.css("z-index"));
		var dt=$(this).children("dt");
		var dd=$(this).children("dd");
		var _show=function(){dd.slideDown(200);dt.addClass("cur");s.css("z-index",z+1);};   //展开效果
		var _hide=function(){dd.slideUp(200);dt.removeClass("cur");s.css("z-index",z);};    //关闭效果
		dt.click(function(){dd.is(":hidden")?_show():_hide();});
		dd.find("a").click(function(){dt.html($(this).html());_hide();});     //选择效果（如需要传值，可自定义参数，在此处返回对应的"value"值 ）
		$("body").click(function(i){ !$(i.target).parents(".select_Set3").first().is(s) ? _hide():"";});
	});
	
	//select
	$(".select_Set4").each(function(){
		var s=$(this);
		var z=parseInt(s.css("z-index"));
		var dt=$(this).children("dt");
		var dd=$(this).children("dd");
		var _show=function(){dd.slideDown(200);dt.addClass("cur");s.css("z-index",z+1);};   //展开效果
		var _hide=function(){dd.slideUp(200);dt.removeClass("cur");s.css("z-index",z);};    //关闭效果
		dt.click(function(){dd.is(":hidden")?_show():_hide();});
		dd.find("a").click(function(){dt.html($(this).html());_hide();});     //选择效果（如需要传值，可自定义参数，在此处返回对应的"value"值 ）
		$("body").click(function(i){ !$(i.target).parents(".select_Set4").first().is(s) ? _hide():"";});
	});
	
	//select
	$(".select_Set5").each(function(){
		var s=$(this);
		var z=parseInt(s.css("z-index"));
		var dt=$(this).children("dt");
		var dd=$(this).children("dd");
		var _show=function(){dd.slideDown(200);dt.addClass("cur");s.css("z-index",z+1);};   //展开效果
		var _hide=function(){dd.slideUp(200);dt.removeClass("cur");s.css("z-index",z);};    //关闭效果
		dt.click(function(){dd.is(":hidden")?_show():_hide();});
		dd.find("a").click(function(){dt.html($(this).html());_hide();});     //选择效果（如需要传值，可自定义参数，在此处返回对应的"value"值 ）
		$("body").click(function(i){ !$(i.target).parents(".select_Set5").first().is(s) ? _hide():"";});
	});
	
});
