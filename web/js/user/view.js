//跳转修改页面
$("#update").on("click",function(){
	window.location.href="/20191015/SelectServlet?id=${user.id}";
});
//删除
$("#del").bind("click",function(){
		if(confirm("确认删除？")){
			
		}
});
//重置密码
$("#repassword").bind("click",function(){
	var userId=$("#userId").val();
	if(confirm("确认重置密码？")){
		
	}
});
