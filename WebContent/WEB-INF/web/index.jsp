<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>环球优路</title>

		<link rel="stylesheet" href="css/bootstrap.min.css" />
	    <link rel="stylesheet" href="css/huanqiu.css" />
	</head>
	<body>
		<div style="border-bottom: 1px #ccc solid; background: #FFF; width: 100%; z-index: 900;" id="outnav" class="full_screen">
			
		 <div  id="topnav">
		 	
		 	<img src="img/logo.png"  style="max-width: 200px;"/>
		 	
		 	<ul>
		 		<li><a href="index.html">首页</a></li>
		 		<li id="globhouse" style="position: relative;"><a href="house_list.html" >海外地产  <span class="caret"></span></a>
		 			<div id="downmenu">
		 				<a href="country.html">马来西亚</a>
		 				<a href="country.html">泰国</a>
		 				<a href="country.html">新加坡</a>
		 				<a href="country.html">越南</a>
		 			</div>
		 			
		 		</li>
		 		<li><a href="news_list.html">海外资讯</a></li>
		 		<li><a href="news_content.html">关于我们</a></li>
		 		<li><a href="news_content.html">联系我们</a></li>
		 	</ul>
		 	<p>
		 		<span class="glyphicon glyphicon-phone-alt"></span>  :
		 		400-123-456
		 	</p>
		 </div>
		 <div style="clear: both;"></div>
	</div>
	<!--
    	作者：langyamoren@163.com
    	时间：2018-08-14
    	描述：
    -->
    <div   id="imgadw"   style="clear: both;">
       <div class="carousel slide" id="carousel2">
                            <ol class="carousel-indicators">
                                <li data-slide-to="0" data-target="#carousel2" class="active"></li>
                                <li data-slide-to="1" data-target="#carousel2"></li>
                                <li data-slide-to="2" data-target="#carousel2" class=""></li>
                            </ol>
                            <div class="carousel-inner">
                            
                            <c:forEach items="${focus}" var="foc" varStatus="focst">
                                 <c:if test="${focst.index==0}">
                                  <div class="item active">
                                 </c:if>
                                 <c:if test="${focst.index!=0}">
                                  <div class="item">
                                 </c:if>
                                 
                                    <img alt="image"  width="100%" src="${foc.path}">
                                    <div class="carousel-caption">
                                        <p>${foc.dis}</p>
                                    </div>
                                </div>
                            </c:forEach>

                            </div>
                           <a data-slide="prev" href="carousel.html#carousel2" class="left carousel-control">
                                <span class="icon-prev"></span>
                            </a>
                            <a data-slide="next" href="carousel.html#carousel2" class="right carousel-control">
                                <span class="icon-next"></span>
                            </a>
                        </div>
    </div>
	<!--
    	作者：langyamoren@163.com
    	时间：2018-08-14
    	描述：广告结束
    -->
   <div id="ousfocus">
   	  <div class="us_list">
   	  	   <span class="glyphicon glyphicon-home"></span>
   	  	   <h5>100%楼盘公司直营</h5>
   	  	   <p>
   	  	    所有楼盘都是公司直营，公司直接从开发商处认筹或已认购，绝对没有中间商赚差价
   	  	   </p>
   	  </div>
   	  
   	  <div class="us_list">
   	  	   <span class="glyphicon glyphicon-fire"></span>
   	  	   <h5>只卖全球好房子</h5>
   	  	   <p>
   	  	   	我们从全球那么多楼盘中精选出来最优质的项目，保证客户的投资价植
   	  	   </p>
   	  </div>
   	  
   	  <div class="us_list">
   	  	   <span class="glyphicon glyphicon-leaf"></span>
   	  	   <h5>精选楼盘，更精选开发商</h5>
   	  	   <p>
   	  	     从全球那么多开发商中，只精选6家最优的开发商，楼盘重要但开发商更重要
   	  	   </p>
   	  </div>
   	  
   	  <div class="us_list">
   	  	   <span class="glyphicon glyphicon-globe"></span>
   	  	   <h5>一站式海外购房服务</h5>
   	  	   <p>
   	  	   	  不懂海外投资，没关系，我们会陪伴您找律师、签约、购房、出租、转售
   	  	   </p>
   	  </div>
   </div>
   <!--
   	作者：langyamoren@163.com
   	时间：2018-08-14
   	描述：特点结束
   -->
   <div id="kaochantuan">
   	  <div class="bigtitle">
   	  	  <h3><span>海外</span>考察团</h3>
   	     <p>每天都期待与您一起旅行，买房</p>
   	  </div>
   	  
   	  <div  class="kaocha_row">
   	     <c:forEach items="${travel}" var="tra">
		   	  	  <div class="kaocha_list">
		   	  	  	<a href="news_content.html">
		   	  	  	  <img src="${tra.pic}" width="570" height="295" />
		   	  	  	  </a>
		   	  	  	  <h3><a href="web/traval_${tra.id}.html">${tra.title}</a> </h3>
		   	  	  	 <span>报名中</span>
		   	  	  	 <ul>
		   	  	  	 	<li>时间：<fmt:formatDate pattern="yyyy-MM-dd" 
            value="${tra.ctimes}"/>日${tra.city}出发</li>
		   	  	  	 	<li>访问城市：${tra.visitcity}</li>
		   	  	  	 </ul>
		   	  	  	  <a href="news_content.html"  class="baomingbutn">报名参加</a>
		   	  	  </div>
   	  	  </c:forEach>
<!--    	  	   <div class="kaocha_list">
   	  	   	<a href="news_content.html">
   	  	  	  <img src="img/kaocha01.jpg" width="570" height="295" />
   	  	  	   </a>
   	  	  	    <h3><a href="news_content.html">新马泰4天3晚自由行</a> </h3>
   	  	  	 <span>报名中</span>
   	  	  	 <ul>
   	  	  	 	<li>时间：2018-8-15日西安出发</li>
   	  	  	 	<li>访问城市：新加坡、马来西亚、泰国</li>
   	  	  	 </ul>
   	  	  	
   	  	  	  <a href="news_content.html" class="baomingbutn">报名参加</a>
   	  	  </div> -->
   	  </div>
   	   <div class="kaocha_more" style="clear: both; text-align: center;">
   	   	 <span>咨询电话：400-123-456</span>
   	        <a href="#">更多旅行&gt;&gt;</a>
   	          
        </div>
   </div>
   
   <!--
   	作者：langyamoren@163.com
   	时间：2018-08-14
   	描述： 以下是海外购房
   -->
   
   <div style="background: #EEE; margin: 20px 0; padding: 20px;"  class="full_screen"> 
   	  <div class="bigtitle">
   	   	<h3><span>海外</span>购房</h3>
   	     <p>只为您挑选全球好房源</p>
   	   </div>
	   	<div id="haiwaigoufang">
	   	   <ul>
	   	   	 <li><a href="#" style="color:#0072E4; border-bottom: 2px #0072E4 solid;">精选</a></li>
	   	   	 <li><a href="#">新加坡</a></li>
	   	   	 <li><a href="#">加拿大</a></li>
	   	   	 <li><a href="#">马来西亚</a></li>
	   	   	 <li><a href="#">泰国</a></li>
	   	   	 <li><a href="#">美国</a></li>
	   	   	 <li><a href="#">更多房源</a></li>
	   	   </ul>
	   	   <div style="clear: both; height: 15px;"></div>
	   	   <div id="house_contents">
	   	   	   <div class="house_list">
	   	   	   	  <a href="house_content.html">
	   	   	   	  <img src="img/house.jpg" width="380" height="215" />
	   	   	   	  </a>
	   	   	   	  <p class="location"><span class="glyphicon glyphicon-map-marker"></span>泰国○曼谷</p>
	   	   	   	  <h3><a href="house_content.html">碧桂园 森林城市</a></h3>
	   	   	   	  <div class="bot_kuang">
	   	   	   	  	<p>总价：<span>55万起</span></p>
	   	   	   	  	<p> 精装、无公摊、永久产权</p>
	   	   	   	  </div>
	   	   	   	  
	   	   	   </div>
	   	   	   <div class="house_list">
	   	   	   	  <a href="house_content.html">
	   	   	   	  <img src="img/house.jpg" width="380" height="215" />
	   	   	   	  </a>
	   	   	   	  <p class="location"><span class="glyphicon glyphicon-map-marker"></span>泰国○曼谷</p>
	   	   	   	  <h3><a href="house_content.html">碧桂园 森林城市</a></h3>
	   	   	   	  <div class="bot_kuang">
	   	   	   	  	<p>总价：<span>55万起</span></p>
	   	   	   	  	<p> 精装、无公摊、永久产权</p>
	   	   	   	  </div>
	   	   	   	  
	   	   	   </div>
	   	   	      <div class="house_list" style="margin-right: 0;">
	   	   	   	  <a href="house_content.html">
	   	   	   	  <img src="img/house.jpg" width="380" height="215" />
	   	   	   	  </a>
	   	   	   	  <p class="location"><span class="glyphicon glyphicon-map-marker"></span>泰国○曼谷</p>
	   	   	   	  <h3><a href="house_content.html">碧桂园 森林城市</a></h3>
	   	   	   	  <div class="bot_kuang">
	   	   	   	  	<p>总价：<span>55万起</span></p>
	   	   	   	  	<p> 精装、无公摊、永久产权</p>
	   	   	   	  </div>
	   	   	   	  
	   	   	   </div>
	   	   	    	   <div class="house_list">
	   	   	   	  <a href="house_content.html">
	   	   	   	  <img src="img/house.jpg" width="380" height="215" />
	   	   	   	  </a>
	   	   	   	  <p class="location"><span class="glyphicon glyphicon-map-marker"></span>泰国○曼谷</p>
	   	   	   	  <h3><a href="house_content.html">碧桂园 森林城市</a></h3>
	   	   	   	  <div class="bot_kuang">
	   	   	   	  	<p>总价：<span>55万起</span></p>
	   	   	   	  	<p> 精装、无公摊、永久产权</p>
	   	   	   	  </div>
	   	   	   	  
	   	   	   </div>
	   	   	   <div class="house_list">
	   	   	   	  <a href="house_content.html">
	   	   	   	  <img src="img/house.jpg" width="380" height="215" />
	   	   	   	  </a>
	   	   	   	  <p class="location"><span class="glyphicon glyphicon-map-marker"></span>泰国○曼谷</p>
	   	   	   	  <h3><a href="house_content.html">碧桂园 森林城市</a></h3>
	   	   	   	  <div class="bot_kuang">
	   	   	   	  	<p>总价：<span>55万起</span></p>
	   	   	   	  	<p> 精装、无公摊、永久产权</p>
	   	   	   	  </div>
	   	   	   	  
	   	   	   </div>
	   	   	      <div class="house_list" style="margin-right: 0;">
	   	   	   	  <a href="house_content.html">
	   	   	   	  <img src="img/house.jpg" width="380" height="215" />
	   	   	   	  </a>
	   	   	   	  <p class="location"><span class="glyphicon glyphicon-map-marker"></span>泰国○曼谷</p>
	   	   	   	  <h3><a href="house_content.html">碧桂园 森林城市</a></h3>
	   	   	   	  <div class="bot_kuang">
	   	   	   	  	<p>总价：<span>55万起</span></p>
	   	   	   	  	<p> 精装、无公摊、永久产权</p>
	   	   	   	  </div>
	   	   	   	  
	   	   	   </div>
	   	   	   <!--房子例表结束-->
	   	   	  
	   	   	  
	   	   	   
	   	   	   
	   	   	   
	   	   </div>
	   	   
	   	   <div style="clear: both;"><!--房产列表清除浮动---></div>
	   </div>
   </div>
   <!--
   	作者：langyamoren@163.com
   	时间：2018-08-14
   	描述：以下是海外咨询
   -->
   <div id="haiwaizx">
   	   <div class="bigtitle">
   	   	<h3><span>海外</span>资讯</h3>
   	     <p>实时发布海外房产资讯</p>
   	   </div>
   	   <div id="news_content">
   	   	  <div class="left">
   	   	  	  <img src="img/leftadw.jpg" />
   	   	  </div>
   	   	  <div class="right">
   	   	    
   	   	    <c:forEach items="${arts}" var="art">
   	   	    
   	   	   
   	   	  	    <div class="news_list">
   	   	  	    	<a href="news_content.html"><img src="${art.pic}" width="160" height="100" /></a>
   	   	  	    	<span><fmt:formatDate pattern="yyyy-MM-dd" value="${art.ctime}"/></span>
   	   	  	    	<h1><a href="web/art_${art.channel_id}/news_${art.channel_id}_${art.id}.html">${art.title}</a></h1>
   	   	  	    	<p><a href="web/art_${art.channel_id}/news_${art.channel_id}_${art.id}.html">
   	   	  	    		
                      <c:set value="${art.content}" var="temcont" scope="request"></c:set>
   	   	  	    	  <%
   	   	  	  String temstr=(String)request.getAttribute("temcont");
   	   	  	  String txtcontent = temstr.replaceAll("</?[^>]+>", ""); //剔出<html>的标签  
   	          txtcontent = txtcontent.replaceAll("<a>\\s*|\t|\r|\n</a>", "");
   	   	  	  if(txtcontent.length()>60)
   	          out.print(txtcontent.substring(0,60));
   	   	  	  else
   	   	      out.print(txtcontent);
   	   	  	    	  %>
   	   	  	    	</a>
   	   	  	    	</p>
   	   	  	    </div>
   	   	  	     </c:forEach>
   	   	  	       
   	   	  </div>
   	   </div>
   </div>
   <!--
   	作者：langyamoren@163.com
   	时间：2018-08-14
   	描述：
   	成功案例
   -->
<div style="background: #EEE; margin: 20px 0; padding: 20px;"  class="full_screen">
	 <div class="bigtitle">
   	   	<h3><span>成功</span>案例</h3>
   	     <p>帮助客户成功买到理想的房子</p>
   	   </div>
   <div id="success_case">
   	   <div class="success_list">
	   	   	  <a href="#">
			   	   	  <div class="topimg">
				   	   	  	<img src="img/1-1f62gq404j2.jpg" width="385" height="180" class="topimg"/>
				   	   	  	<div>
					   	   	  	<h5>选购项目：</h5>
					   	   	  	<h6>碧桂园 森林城市</h6>
				   	   	  	</div>
			   	   	  </div>
			   	   	  <div class="personcase">
			   	   	  	 <img src="img/a1.jpg" width="55" height="55"  style="border-radius: 27px; float: left;" />
			   	   	  	 <h6>
			   	   	  	 	李先生<br />
			   	   	  	 	只为成全孩子留美就业小梦想
			   	   	  	 </h6>
			   	   	  	 <p>
			   	   	  	 	先生经营的传媒公司自成立以来，成长状况非常乐观，但企业各项缴税金额较低，世通国际专家分析后认为，W先生的公司经营
			   	   	  	 </p>
			   	   	  </div>
	   	   	  </a>
   	   </div>
   	   
   	      <div class="success_list">
	   	   	  <a href="#">
			   	   	  <div class="topimg">
				   	   	  	<img src="img/1-1f62gq404j2.jpg" width="385" height="180" class="topimg"/>
				   	   	  	<div>
					   	   	  	<h5>选购项目：</h5>
					   	   	  	<h6>碧桂园 森林城市</h6>
				   	   	  	</div>
			   	   	  </div>
			   	   	  <div class="personcase">
			   	   	  	 <img src="img/a1.jpg" width="55" height="55"  style="border-radius: 27px; float: left;" />
			   	   	  	 <h6>
			   	   	  	 	李先生<br />
			   	   	  	 	只为成全孩子留美就业小梦想
			   	   	  	 </h6>
			   	   	  	 <p>
			   	   	  	 	先生经营的传媒公司自成立以来，成长状况非常乐观，但企业各项缴税金额较低，世通国际专家分析后认为，W先生的公司经营
			   	   	  	 </p>
			   	   	  </div>
	   	   	  </a>
   	   </div>
   	   
   	      <div class="success_list">
	   	   	  <a href="#">
			   	   	  <div class="topimg">
				   	   	  	<img src="img/1-1f62gq404j2.jpg" width="385" height="180" class="topimg"/>
				   	   	  	<div>
					   	   	  	<h5>选购项目：</h5>
					   	   	  	<h6>碧桂园 森林城市</h6>
				   	   	  	</div>
			   	   	  </div>
			   	   	  <div class="personcase">
			   	   	  	 <img src="img/a1.jpg" width="55" height="55"  style="border-radius: 27px; float: left;" />
			   	   	  	 <h6>
			   	   	  	 	李先生<br />
			   	   	  	 	只为成全孩子留美就业小梦想
			   	   	  	 </h6>
			   	   	  	 <p>
			   	   	  	 	先生经营的传媒公司自成立以来，成长状况非常乐观，但企业各项缴税金额较低，世通国际专家分析后认为，W先生的公司经营
			   	   	  	 </p>
			   	   	  </div>
	   	   	  </a>
   	   </div>
   	   
   	   <div style="clear: both;"></div>
   </div>
 </div>
 <!--
 	作者：langyamoren@163.com
 	时间：2018-08-14
 	描述：页脚
 -->
 <div style="background:#2C3644; height: 280px; width: 100%;"  class="full_screen">
 	<div id="pagefoot">
 		<div id="foot_tel">
 			<div class="left">
 				<h3>环球优路</h3>
 				<h5>youlu.com</h5>
 				
 				<h3><span class="glyphicon glyphicon-earphone"></span>&nbsp;:400-123-456</h3>
 				<h3><span class="glyphicon glyphicon-envelope"></span>&nbsp;:9703239@qq.com</h3>
 			</div>
 			<div class="right">
 				<div>
 					<img src="img/app_ios_androiddown_app.jpg" width="140" height="140" />
 					<p style="text-align: center;">公众号</p>
 				</div>
 				
 				<div>
 					<img src="img/app_ios_androiddown_app.jpg" width="140" height="140" />
 					<p style="text-align: center;">公众号</p>
 				</div>
 			</div>
 		</div>
 		<div id="foot_bottom" style="clear: both; text-align: center; line-height: 50px;">
 			Copyright © 2018 youlu.com Inc. All Rights Reserved.

陕西棕榈海岸置业有限公司&nbsp;陕ICP备18013995号


 		</div>
 	</div>
 </div>
 	    <script type="text/javascript" src="js/jquery.min.js" ></script>
	    <script type="text/javascript" src="js/bootstrap.min.js" ></script>
	    <script type="text/javascript" src="js/huanqiu.js" ></script>
	</body>
</html>
