<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspf/taglibs.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>网店云</title>
<link href="${ctx}/css/css.css" rel='stylesheet' type='text/css' />
<script type="text/javascript" src="${ctx}/js/my/user.js"></script>


</head>
<body>
	<!----- start-header---->
	<div class="login-top">
		<%@ include file="/WEB-INF/view/base/nav.jsp"%>
	</div>
	<!----- //End-header---->

	<div class="login-content">
		<div class="container">
			<div class="left">
				<img src="${ctx}/images/box-2.png">
			</div>
			<div class="right">
				<div>
					<form>
						<div>
							<input type="text" name="mobile" id="mobile"
								class="login-input input-user" placeholder="手机号">
						</div>
						<div>
							<input type="password" name="password" id="password"
								class="login-input input-key" placeholder="密码">
						</div>
						<div>
							<a class="login-button" href="javascript:login();">登陆</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="login-bottom">© 2014-2015 eshopyun.com 版权所有 ICP证：苏B2-8888888</div>
			
</body>
</html>