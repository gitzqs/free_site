<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspf/taglibs.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>网店云</title>

<script type="text/javascript" src="${ctx}/js/move-top.js"></script>
<script type="text/javascript" src="${ctx}/js/easing.js"></script>
<script src="${ctx}/js/responsiveslides.min.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
</script>

<script type="application/x-javascript"> 
	addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<script>
			$(function() {
				var pull 		= $('#pull');
					menu 		= $('nav ul');
					menuHeight	= menu.height();
				$(pull).on('click', function(e) {
					e.preventDefault();
					menu.slideToggle();
				});
				$(window).resize(function(){
	        		var w = $(window).width();
	        		if(w > 320 && menu.is(':hidden')) {
	        			menu.removeAttr('style');
	        		}
	    		});
			});
</script>
<script>
			    
			    $(function () {
			      // Slideshow 4
			      $("#slider4").responsiveSlides({
			        auto: true,
			        pager: true,
			        nav: true,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
</script>
</head>
<body>
	<!----- start-header---->
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
	
	<div id="about" class="top-grids text-center">
		<section id="one" class="main style1">
			<div class="container">
				<div class="row 150%">
					<div class="6u 12u$(medium)">
						<header class="major">
							<h2>
								便捷<br /> Convenient
							</h2>
						</header>
						<p>无论是电脑PC端、微信商城、APP、手机商城，一键发布，全都展示。无论是电脑PC端、微信商城、APP、手机商城，一键发布，全都展示。无论是电脑PC端、微信商城、APP、手机商城，一键发布，全都展示。无论是电脑PC端、微信商城、APP、手机商城，一键发布，全都展示。无论是电脑PC端、微信商城、APP、手机商城，一键发布，全都展示。</p>
					</div>
					<div class="button-1"></div>
					<div class="6u$ 12u$(medium) important(medium)">
						<span class="image fit"><img src="${ctx}/images/pic01.png" alt="" /></span>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!---- top-grids ---->
	<!---- works ---->
	<div id="portfolio" class="works text-center">
		<div id="about" class="top-grids text-center">
			<div class="container">
				<div class="col-md-4">
					<div class="top-grid">
						<span><label class="icon1"> </label></span>
						<h3>
							<a href="#">技术服务</a>
						</h3>
						<p>此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="top-grid">
						<span><label class="icon2"> </label></span>
						<h3>
							<a href="#">技术服务</a>
						</h3>
						<p>此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="top-grid">
						<span><label class="icon3"> </label></span>
						<h3>
							<a href="#">技术服务</a>
						</h3>
						<p>此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字</p>
					</div>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	</div>
	<!---- works ---->
	<div class="index">
		<div class="index-1 container top-grid ">
			<a href="#"><img src="${ctx}/images/index_02.jpg"></a>
		</div>
	</div>
	<!---- skills --->
	<div id="skills" class="skills">
		<div class="container">
			<div id="about" class="top-grids text-center">
				<section id="one" class="main style1">
					<div class="container">
						<div class="row 150%">
							<div class="6u 12u$(medium)">
								<header class="major">
									<h2>
										优势<br /> Advantage
									</h2>
								</header>
								<p>支持支付宝 微信支付 模板定制 支持支付宝 微信支付 模板定制 支持支付宝 微信支付 模板定制 支持支付宝
									微信支付 模板定制 支持支付宝 微信支付 模板定制 支持支付宝 微信支付 模板定制 支持支付宝 微信支付 模板定制 支持支付宝
									微信支付 模板定制 支持支付宝 微信支付 模板定制</p>

							</div>
							<div class="6u$ 12u$(medium) important(medium)">
								<span class="image fit"><img src="${ctx}/images/box-2.png"
									alt="" /></span>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
		<!---- skills --->
		<!---- team ---->
		<div id="team" class="team">
			<div class="container">
				<div class="head-section text-center">
					<h2>
						<a href="#">成功案例</a>
					</h2>
					<p>Successful case</p>
				</div>
				<!---- team-grids ---->
				<div class="team-grids text-center">
					<div class="col-md-4">
						<div class="team-grid">
							<img class="img-responsive t-pic" src="${ctx}/images/t1.jpg"
								title="name" />
							<h3>
								<a href="#">爱婴之家</a>
							</h3>
							<span>PC商城案例</span>
							<p>此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="team-grid">
							<img class="img-responsive t-pic" src="${ctx}/images/t1.jpg"
								title="name" />
							<h3>
								<a href="#">爱婴之家</a>
							</h3>
							<span>PC商城案例</span>
							<p>此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="team-grid">
							<img class="img-responsive t-pic" src="${ctx}/images/t1.jpg"
								title="name" />
							<h3>
								<a href="#">爱婴之家</a>
							</h3>
							<span>PC商城案例</span>
							<p>此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<!---- team-grids ---->
			</div>
		</div>
		<div class="clearfix"></div>
		<!---- team ---->
		<!---- contact ---->

	</div>
	<!---- contact ---->
	<div class="clearfix"></div>
	<!--- footer ---->
	<%@ include file="/WEB-INF/view/base/footer.jsp"%>
	<!--- footer ---->
	
	<!---- sub-footer --->
	<%@ include file="/WEB-INF/view/base/sub_footer.jsp"%>
	<!---- sub-footer --->
</body>
</html>
