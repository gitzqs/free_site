<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspf/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>在线商城首页</title>
</head>

<body>
	<!--top 开始-->
	<%@ include file="/WEB-INF/view/com/header.jsp" %>
    
    <!--logo search 开始-->
	<%@ include file="/WEB-INF/view/com/search.jsp" %>
    
    <!--空格位置（预留切换城市）-->
    <div class="switch-city w1200">
    	<span>&nbsp;</span>
    </div>
    
    <!--菜单 开始-->
	<%@ include file="/WEB-INF/view/com/menu.jsp" %>
    
    <!--banner 开始-->
    <div class="banner-box">
    	<div class="banner w1200">
        	<ul>
        		<c:forEach items="${calList}" var="calLis">
        			<li><a href="JavaScript:;"><img src="${calLis.image}" /></a></li>
        		</c:forEach>
                <div style="clear:both;"></div>
            </ul>
            <a href="JavaScript:;" class="bnr bnr-left"><</a>
            <a href="JavaScript:;" class="bnr bnr-right">></a>
        </div>
    </div>
    
    <!--热门推荐-->
    <div class="hot-recommend w1200">
    	<h3>热门推荐</h3>
        <ul class="">
        	<li class="ys1">
            	<a href="#"><img src="${ctx}/images/hot-tu1.jpg" /></a>
                <div class="ys1-opt"></div>
                <div class="ys1-ft">
                	<p>最唯美<br /><span>时尚酒店</span></p>
                    <a href="#">点击有实惠</a>
                </div>
            </li>
            <li class="ys2">
            	<p>汽车保养</p>
                <a href="#" class="ys2-a1" style="margin-bottom:25px;">上门汽车保养1一元钱</a>
            	<a href="#"><img src="${ctx}/images/hot-tu2.jpg" /></a>
            </li>
            <li class="ys2">
            	<p>汽车保养</p>
                <a href="#" class="ys2-a1">上门汽车保养1一元钱</a>
                <a href="#"><img src="${ctx}/images/hot-tu3.jpg" /></a>
            </li>
            <li class="ys2" style=" width:298px;">
            	<p>汽车保养</p>
                <a href="#" class="ys2-a1">上门汽车保养1一元钱</a>
            	<a href="#"><img src="${ctx}/images/hot-tu4.jpg" /></a>
            </li>
            <li class="ys1">
            	<a href="#"><img src="${ctx}/images/hot-tu5.jpg" /></a>
                <div class="ys1-opt"></div>
                <div class="ys1-ft">
                	<p>最实惠KTV<br /><span>最佳组合</span></p>
                    <a href="#">点击有实惠</a>
                </div>
            </li>
            <li class="ys1">
            	<a href="#"><img src="${ctx}/images/hot-tu6.jpg" /></a>
                <div class="ys1-opt"></div>
                <div class="ys1-ft">
                	<p>最贴心家政<br /><span>包您满意</span></p>
                    <a href="#">点击有实惠</a>
                </div>
            </li>
            <li class="ys2">
            	<p>汽车保养</p>
                <a href="#" class="ys2-a1" style="margin-bottom:12px;">上门汽车保养1一元钱</a>
            	<a href="#"><img src="${ctx}/images/hot-tu7.jpg" /></a>
            </li>
            <li class="ys2" style="width:298px;">
            	<p>汽车保养</p>
                <a href="#" class="ys2-a1" style="margin-bottom:15px;">上门汽车保养1一元钱</a>
            	<a href="#"><img src="${ctx}/images/hot-tu8.jpg" /></a>
            </li>
            <div style="clear:both;"></div>
        </ul>
    </div>
    
    <!--商品内容页面-->
    <div class="shopping-content w1200">
    	<c:forEach items="${typeList}" var="tl" varStatus="vs">
    	<div class="sp-con-info">
        	<h3 class="sp-info-tit"><span>${vs.index}F</span>${tl.name}</h3>
        	<div class="sp-info-l f-l">
            	<a href="#"><img src="${ctx}${tl.image}" /></a>
                <div class="sp-l-b">
                	<c:forEach items="${tl.list}" var="cl">
                		<a href="#">${cl.name}</a>
                	</c:forEach>
                </div>
            </div>
        	<ul class="sp-info-r f-r">
        		<c:forEach items="${tl.goodsList}" var="gl">
        			<li>
                        <div class="li-top">
                            <a href="#" class="li-top-tu"><img src="${ctx}/images/sp-con-r-tu.gif" /></a>
                            <p class="jiage"><span class="sp1">￥109</span><span class="sp2">￥${gl.price}</span></p>
                        </div>
                        <p class="miaoshu">${gl.goodsName}</p>
                        <div class="li-md">
                            <div class="md-l f-l">
                                <p class="md-l-l f-l" ap="">1</p>
                                <div class="md-l-r f-l">
                                    <a href="JavaScript:;" class="md-xs" at="">∧</a>
                                    <a href="JavaScript:;" class="md-xx" ab="">∨</a>
                                </div>
                                <div style="clear:both;"></div>
                            </div>
                            <div class="md-r f-l">
                                <button class="md-l-btn1">立即购买</button>
                                <button class="md-l-btn2">加入购物车</button>
                            </div>
                            <div style="clear:both;"></div>
                        </div>
                        <p class="pingjia">88888评价</p>
                        <p class="weike">微克宅购自营</p>
                    </li>
        		</c:forEach>
            </ul>
            <div style="clear:both;"></div>
        </div>
        
        </c:forEach>
        
    </div>
    
    <!--底部服务-->
   <%@ include file="/WEB-INF/view/com/footer.jsp" %>
    
</body>
</html>
