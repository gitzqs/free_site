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

	<div class="our-work" id="works">
		<div class="container">
			<div class="works">
				<h3>我们的案例</h3>
				<p style="color: #999; font-size: 14px;">商城开发中有众多的成功案例，覆盖护肤品、生鲜、礼品、团购、建材、家具等多个行业</p>
			</div>
			<ul id="filters">
				<li><span class="filter active" data-filter="app card icon web">公司案例</span><label>/</label></li>
				<li><span class="filter" data-filter="app">PC商城案例</span><label>/</label></li>
				<li><span class="filter" data-filter="card">手机商城案例</span><label>/</label></li>
				<li><span class="filter" data-filter="card">app商城案例</span><label>/</label></li>
				<li><span class="filter" data-filter="icon">微信商城案例</span></li>
			</ul>
			<div id="portfoliolist">
				<div class="portfolio app mix_all" data-cat="app"
					style="display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper ">
						<a href="#" class="b-link-stripe b-animate-go  thickbox play-icon">
							<img class="img-responsive" src="${ctx}/images/y.jpg" alt="" />
						</a>
						<div class="simple">
							<h5>某某公司商城案例</h5>
							<p>简介简介简介简介简简介简介</p>
						</div>
					</div>
				</div>
				<div class="portfolio icon mix_all" data-cat="icon"
					style="display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">
						<a href="#"
							class="b-link-stripe b-animate-go  thickbox play-icon "> <img
							class="img-responsive" src="${ctx}/images/w.jpg" alt="" /></a>
						<div class="simple">
							<h5>某某公司商城案例</h5>
							<p>简介简介简介简介简简介简介</p>
						</div>
					</div>
				</div>
				<div class="portfolio card mix_all" data-cat="card"
					style="display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">
						<a href="#"
							class="b-link-stripe b-animate-go  thickbox play-icon "> <img
							class="img-responsive" src="${ctx}/images/b.jpg" alt="" /></a>
						<div class="simple">
							<h5>某某公司商城案例</h5>
							<p>简介简介简介简介简简介简介</p>
						</div>
					</div>
				</div>
				<div class="portfolio app mix_all" data-cat="app"
					style="display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper ">
						<a href="#"
							class="b-link-stripe b-animate-go  thickbox play-icon "> <img
							class="img-responsive" src="${ctx}/images/box.jpg" alt="" /></a>
						<div class="simple">
							<h5>某某公司商城案例</h5>
							<p>简介简介简介简介简简介简介</p>
						</div>
					</div>
				</div>
				<div class="portfolio card mix_all" data-cat="card"
					style="display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper ">
						<a href="#"
							class="b-link-stripe b-animate-go  thickbox play-icon "> <img
							class="img-responsive" src="${ctx}/images/cover.jpg" alt="" /></a>
						<div class="simple">
							<h5>某某公司商城案例</h5>
							<p>简介简介简介简介简简介简介</p>
						</div>
					</div>
				</div>
				<div class="portfolio icon mix_all" data-cat="icon"
					style="display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">
						<a href="#small-dialog5"
							class="b-link-stripe b-animate-go  thickbox play-icon "> <img
							class="img-responsive" src="${ctx}/images/light.jpg" alt="" />
						</a>
						<div class="simple">
							<h5>某某公司商城案例</h5>
							<p>简介简介简介简介简简介简介</p>
						</div>
					</div>

				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

	<!--- footer ---->
	<%@ include file="/WEB-INF/view/base/footer.jsp"%>
	<!--- footer ---->

	<!---- sub-footer --->
	<%@ include file="/WEB-INF/view/base/sub_footer.jsp"%>
	<!---- sub-footer --->
</body>
</html>