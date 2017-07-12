var strPath = window.document.location.pathname;
var postPath = strPath.substring(0, strPath.substr(1).indexOf('/') + 1);

/** 发送验证码 */
function sendMessage(){
	var mobile = $("#mobile").val();
	if(mobile == null || mobile == ''){
		alert("手机号不能为空");
		return;
	}
	$.ajax({
		url : postPath + "/register/sendMessage",
		type : 'POST',
		data : {
			mobile : mobile
		},
		contentType : "application/json;charset=utf-8",
		dataType : 'json',
		cache : false,
		success : function(data){
			if(data.response.returnCode = '0000'){
				//重置发送验证码按钮，倒计时60s
				countDown(59);
			}else{
				alert(data.response.returnMsg);
			}
		}
	});
}

/** 倒计时 */
function countDown(second){
	//重置按钮
	$("#sendButton").attr("onclick","void(0);");
	var text = "s后重新获取";
	var interval = setInterval(function(){
		if(second == 0){
			//恢复按钮
			$("#sendButton").attr("onclick","sendMessage();");
			clearInterval(interval);
		}else{
			$("#sendButton").val(second+text);
		}
		
	},1000);
}

/** 注册 */
function register(){
	var user = {
			'userName' : $("#userName").val(),
			'password' : $("#password").val(),
			'passwordAgain' : $("#passwordAgain").val(),
			'mobile' : $("#mobile").val(),
			'messageCode' : $("#messageCode").val(),
			'imgCode' : $("#imgCode").val()
	};
	$.ajax({
		url : postPath + '/register/handle',
		type : 'POST',
		data: JSON.stringify(user),
		contentType : "application/json;charset=utf-8",
		dataType : 'json',
		cache : false,
		success : function(data){
			if(data.response.returnCode = '0000'){
				//跳转到登录页面
			}else{
				alert(data.response.returnMsg);
			}
			
		}
	});
}

/** 登录 */
function login(){
	var user = {
		'loginName' : $("#mobile").val(),
		'password' : $("#password").val()
	};
	$.ajax({
		url : postPath + "/login/handle",
		type : 'POST',
		data : JSON.stringify(user),
		contentType : "application/json;charset=utf-8",
		dataType : 'json',
		cache : false,
		success : function(data){
			if(data.response.returnCode == '0000'){
				//跳转到登录之前页面
			}else{
				alert(data.response.returnMsg);
			}
		}
	});
}