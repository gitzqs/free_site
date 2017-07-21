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

</head>
<body>
	<div id="home" class="header">
		<div class="top-header bounceInDown" data-wow-delay="0.4s">
			<%@ include file="/WEB-INF/view/base/header.jsp"%>
			<%@ include file="/WEB-INF/view/base/nav.jsp"%>
		</div>
	</div>
	
	<div id="top" class="callbacks_container">
		<ul class="rslides" id="slider4">
			<li><img src="${ctx}/images/slide1.jpg" alt=""></li>
			<li><img src="${ctx}/images/slide2.jpg" alt=""></li>
			<li><img src="${ctx}/images/slide3.jpg" alt=""></li>
		</ul>
	</div>
	<div class="clearfix"></div>

	<div class="content container">
		<h2>公司服务</h2>
		<span>网店云（中国购物搜索控股有限公司）成立于2014年，是中国领先的移动电商系统及服务提供商，其团队成员专注从事电子商务、移动微商城的开发方向，核心力量是来自国内顶尖IT公司的一批有移动互联网梦想的战友组成，在同行业中算是一支战斗力最强并富有激情的年轻团队，同时也具备最强的团队实力及行业竞争力。网店云可服务于满足用户的多种需求，帮助商户通过一键建站服务，随时随地构建PC商城，移动商城，微信商城，并有多种可选增值服务，企业理念是帮助商户建立具有独立域名的多方位电子商务系统，专注于移动互联网的电商解决方案及服务提供，并以先进的商业理念、优秀的软件产品和专业的配套服务，引领传统电商进行出淘，搭建立体化的独立商城，并走上适合自身的电商道路，关注电商未来，让电商更简单。</span><br />
		<br />
		<br /> <b>什么是网店云？国内最大的电子商务自助建站平台</b><br />
		<br /> <span>网店云是一套强大的B2C网店系统、微店铺系统、短信营销系统的综合体，为商家提供了完整的电商解决方案，包括PC端、移动端、微信端等。使用网店云的自助建站系统，您可以快速、低成本的搭建任意一个所需类型的商城！网店云提供了全套的商品管理、订单管理、交易系统、会员系统、营销系统。另外，网店云提供的店铺页面管理系统、短信营销维护客户是很牛逼的，您有极高的自由度去定制您的商城，几乎每一个页面都可以自定义！还有，网店云的所有服务都可以免费体验！么么哒。</span>
	</div>

	<!--- footer ---->
	<%@ include file="/WEB-INF/view/base/footer.jsp"%>
	<!--- footer ---->
	
	<!---- sub-footer --->
	<%@ include file="/WEB-INF/view/base/sub_footer.jsp"%>
	<!---- sub-footer --->
</body>
</html>