<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspf/taglibs.jsp"%>
<script type="text/javascript" src="${ctx}/js/move-top.js"></script>
<script type="text/javascript" src="${ctx}/js/easing.js"></script>
<script type="text/javascript" src="${ctx}/js/responsiveslides.min.js"></script>
<script type="text/javascript" src="${ctx}/js/my/index.js"></script>

<div class="container">
	<div class="logo">
		<a href="#"></a>
	</div>
	<nav class="top-nav">
		<ul class="top-nav">
			<c:choose>
				<c:when test="${isActive == 0 }">
					<li class="team-active"><a href="${ctx}/index/" class="scroll">网站首页</a></li>
				</c:when>
				<c:otherwise>
					<li class="active"><a href="${ctx}/index/" class="scroll">网站首页</a></li>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${isActive == 1 }">
					<li class="team-active"><a href="${ctx}/product/" class="scroll">产品中心</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="${ctx}/product/" class="scroll">产品中心</a></li>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${isActive == 2 }">
					<li class="team-active"><a href="${ctx}/cases/" class="scroll">公司案例</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="${ctx}/cases/" class="scroll">公司案例</a></li>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${isActive == 3 }">
					<li class="team-active"><a href="${ctx}/service/" class="scroll">公司服务</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="${ctx}/service/" class="scroll">公司服务</a></li>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${isActive == 4 }">
					<li class="team-active"><a href="${ctx}/help/" class="scroll">帮助支持</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="${ctx}/help/" class="scroll">帮助支持</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
		<a href="#" id="pull"><img src="${ctx}/images/nav-icon.png"
			title="menu" /></a>
	</nav>
	<div class="clearfix"></div>
</div>