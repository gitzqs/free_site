var strPath = window.document.location.pathname;
var postPath = strPath.substring(0, strPath.substr(1).indexOf('/') + 1);

/** 登录 */
function login(){
	var user = {
		'mobile' : $("#mobile").val(),
		'password' : $("#password").val()
	};
	$.ajax({
		url : postPath + "/user/signin",
		type : 'POST',
		data : JSON.stringify(user),
		contentType : "application/json;charset=utf-8",
		dataType : 'json',
		cache : false,
		success : function(data){
			if(data.returnCode == '0000'){
				//跳转到登录之前页面
				window.location.href = postPath + "/index/";
			}else{
				alert(data.returnMsg);
			}
		}
	});
}