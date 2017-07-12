<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <div class="nav w1200">
    	<a href="JavaScript:;" class="sp-kj" kj="">
        	商品分类快捷
        </a>
        <div class="kj-show2">
        	<c:forEach items="${typeList}" var="typeL">
        		 <div class="kj-info1" mg="shiping">
        		 	<dl class="kj-dl1">
        		 		<dt><a href="#">${typeL.name}</a></dt>
        		 		<dd>奶粉/辅食、尿裤/湿巾、玩具<br />
                        宝宝喂养/洗护清洁</dd>
        		 	</dl>
        		 	<div class="kj-if-show" mg2="shiping">
        		 		<c:forEach items="${typeL.list}" var="childL">
        		 			<dl>
		                    	<dt>${childL.name}</dt>
		                        <dd>
		                        	<c:forEach items="${childL.list }" var="cddL">
		                        		<a href="#">${cddL.name}</a>
		                        	</c:forEach>
		                        </dd>
		                        <div style="clear:both;"></div>
                    		</dl>
        		 		</c:forEach>
        		 	</div>
        		 </div>
        	</c:forEach> 
        </div>
        <ul>
        	<li><a href="#">在线商城</a></li>
            <div style="clear:both;"></div>
        </ul>
        <div style="clear:both;"></div>
    </div>