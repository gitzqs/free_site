<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspf/taglibs.jsp"%>
<div class="t-bar">
	<div class="mainwidth container">
		<div class="tb-right">
			<c:if test="${isLogin == 0 || isLogin == null}">
				<div class="try">
					<a href='#' rel="nofollow">免费试用</a>
				</div>
				<div class="register-reg">
					<a href='#' rel="nofollow">注册</a>
				</div>
				<div class="register-login">
					<a href='${ctx}/user/login' rel="nofollow">登录</a>
				</div>
			</c:if>
			<c:if test="${isLogin == 1 }">
				<div class="try">
					<a href='${ctx}/user/logout' rel="nofollow">退出登录</a>
				</div>
				<div class="register-reg">
					<a href='#' rel="nofollow">个人中心</a>
				</div>
				<div class="register-login">
					<a href='#' rel="nofollow">欢迎您,${mobile}</a>
				</div>
			</c:if>
			
		</div>
	</div>
</div>