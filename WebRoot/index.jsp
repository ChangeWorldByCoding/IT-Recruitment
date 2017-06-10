<%@ page language="java"
	import="java.util.*"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>IT招聘网-最专业的互联网招聘网站</title>

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="style/css/bootstrap.min.css">
<link type="text/css" href="style/css/semantic.css" rel="stylesheet">
<link rel="stylesheet" href="style/css/Mystyle.css" media="screen"
	type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">
<script src="style/js/jquery.min.js"></script>
<script src="style/js/bootstrap.min.js"></script>
<script type="text/javascript" src="style/js/semantic.js"></script>
<link href="style/css/style.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="style/css/styledemo.css" />
<script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
<style type="text/css">
.body-left ul li i {
	color: #00CC99;
}
</style>
<script>
	$(document).ready(function() {
		$('.menu .item').tab();
	});
</script>
<style>
#home_banner .banner_control .thumbs_2,.thumbs_3 {
	margin-top: 13px;
}
</style>

</head>

<body>

	<!--头部-->
	<jsp:include page="head.jsp"></jsp:include>
	<!--体-->
	<div class="body">
		<!--体左边-->
		<div class="body-left" style="">
			<div class="sidebar"
				style="height: 500px; width: 270px;background:#8B0A50;position: absolute;margin-top:-20px;">
				<h1>
					<i class="fa fa-bars push"></i>分类<span class="color">Menu</span>
				</h1>
				<ul class="uuu">
					<li><a href="#"><i class="fa fa-dashboard push"></i><i>后端开发</i><i
							class="fa fa-angle-right"></i></a><span class="hover"></span>
						<ul class="sub-menu">
							<li><a
								href="showJobsByJobname.do?name=Java&pageindex=1&pagenum=5">Java</a><span class="hover"></span></li>
							<li><a
								href="showJobsByJobname.do?name=大数据&pageindex=1&pagenum=5">大数据</a><span class="hover"></span></li>
							<li><a
								href="showJobsByJobname.do?name=PHP&pageindex=1&pagenum=5">PHP</a><span class="hover"></span></li>
							<li><a href="#">.NET</a><span
								class="hover"></span></li>
							<li><a href="#">C#</a><span
								class="hover"></span></li>
							<li><a href="#">C</a><span
								class="hover"></span></li>
							<li><a href="#">Node.js</a><span
								class="hover"></span></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-user push"></i><i>移动端开发</i><i
							class="fa fa-angle-right"></i></a><span class="hover"></span>
						<ul class="sub-menu">
							<li><a href="#">html5</a><span
								class="hover"></span></li>
							<li><a href="#">Android</a><span
								class="hover"></span></li>
							<li><a href="#">ios</a><span
								class="hover"></span></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-cog push"></i><i>前端开发</i><i
							class="fa fa-angle-right"></i></a><span class="hover"></span>
						<ul class="sub-menu">
							<li><a href="#">html5</a><span
								class="hover"></span></li>
							<li><a href="#">flash</a><span
								class="hover"></span></li>
							<li><a href="#">html5</a><span
								class="hover"></span></li>
							<li><a href="#">Javascript</a><span
								class="hover"></span></li>
							<li><a href="#">u3d</a><span
								class="hover"></span></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-picture-o push"></i><i>测试</i><i
							class="fa fa-angle-right"></i></a><span class="hover"></span>
						<ul class="sub-menu">
							<li><a href="#">功能测试 </a><span
								class="hover"></span></li>
							<li><a href="#">性能测试</a><span
								class="hover"></span></li>
							<li><a href="#">白盒测试</a><span
								class="hover"></span></li>
							<li><a href="#">灰盒测试</a><span
								class="hover"></span></li>
							<li><a href="#">手机测试</a><span
								class="hover"></span></li>

						</ul></li>
					<li><a href="#"><i class="fa fa-file push"></i><i>DBA</i><i
							class="fa fa-angle-right"></i></a><span class="hover"></span>
						<ul class="sub-menu">
							<li><a href="#">Mysql</a><span
								class="hover"></span></li>
							<li><a href="#">sqlserver</a><span
								class="hover"></span></li>
							<li><a href="#">oracle</a><span
								class="hover"></span></li>
							<li><a href="#">db2</a><span
								class="hover"></span></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-plane push"></i><i>硬件开发</i><i
							class="fa fa-angle-right"></i></a><span class="hover"></span>
						<ul class="sub-menu">
							<li><a href="#">嵌入式</a><span
								class="hover"></span></li>
							<li><a href="#">自动化</a><span
								class="hover"></span></li>
							<li><a href="#">单片机</a><span
								class="hover"></span></li>

						</ul></li>
				</ul>
			</div>

		</div>
		<style>
		   .uuu .sub-menu{width:150px;}
		   .uuu .sub-menu li{width:150px;}
		</style>
		<!--体右边-->
		<div class="body-right">
			<!--右上 搜索框-->
			<div class="top">
				<form action="showJobsByJobname.do?pageindex=1&pagenum=5"
					method="post">
					<input type="text" placeholder="搜索职位" name="name">
					 <button type="submit">
							<font color="#FFFFFF"> 搜索</font>
						</button>
				</form>
			</div>
			<!--右中-->
			<div class="middle">
				<!--由中上 热门搜索-->
				<div class="middle-top">
					<span>热门搜索:</span><span><a
						href="showJobsByJobname.do?name=Java">JAVA</a> </span><span><a
						href="showJobsByJobname.do?name=PHP">PHP</a></span><span><a
						href="">HR</a> </span><span><a href="">iOS</a></span><span><a
						href="">Android </a></span><span><a href="">云计算</a></span>
				</div>
				<!--右中下 轮转-->
				<div class="middle-bottom">
					<div id="home_banner">
						<ul class="banner_bg">
							<li class="banner_bg_1 current"><a
								href="h/subject/s_buyfundation.html?utm_source=DH__lagou&utm_medium=banner&utm_campaign=haomai"
								target="_blank"><img
									src="image/d05a2cc6e6c94bdd80e074eb05e37ebd.jpg" width="612"
									height="160" alt="好买基金——来了就给100万" /></a></li>
							<li class="banner_bg_2"><a
								href="h/subject/s_worldcup.html?utm_source=DH__lagou&utm_medium=home&utm_campaign=wc"
								target="_blank"><img
									src="image/c9d8a0756d1442caa328adcf28a38857.jpg" width="612"
									height="160" alt="世界杯放假看球，老板我也要！" /></a></li>
							<li class="banner_bg_3"><a
								href="h/subject/s_xiamen.html?utm_source=DH__lagou&utm_medium=home&utm_campaign=xiamen"
								target="_blank"><img
									src="image/d03110162390422bb97cebc7fd2ab586.jpg" width="612"
									height="160" alt="出北京记——第一站厦门" /></a></li>
						</ul>
						<div class="banner_control">
							<em></em>
							<ul class="thumbs">
								<li class="thumbs_1 current"><i></i> <img
									src="image/4469b1b83b1f46c7adec255c4b1e4802.jpg" width="113"
									height="42" /></li>
								<li class="thumbs_2"><i></i> <img
									src="image/381b343557774270a508206b3a725f39.jpg" width="113"
									height="42" /></li>
								<li class="thumbs_3"><i></i> <img
									src="image/354d445c5fd84f1990b91eb559677eb5.jpg" width="113"
									height="42" /></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="mycard">
					<div class="ui special cards">
						<div class="card" style="height:110px;width:110px;">
							<div class="blurring dimmable image"
								style="height:110px;width:110px;">
								<div class="ui dimmer">
									<div class="content">
										<div class="center" style="height:110px;width:110px;">
											<div class="ui inverted button"
												style="height:40px; width:90px;">
												<a href="showJob.do?id=7">查看</a>
											</div>
										</div>
									</div>
								</div>
								<img src="image/360.jpg" style="height:110px;width:110px;">
							</div>

						</div>
						<div class="card" style="height:110px;width:110px;">
							<div class="blurring dimmable image"
								style="height:110px;width:110px;">
								<div class="ui dimmer">
									<div class="content">
										<div class="center" style="height:110px;width:110px;">
											<div class="ui inverted button"
												style="height:40px; width:90px;">
												<a href="showJob.do?id=8">查看</a>
											</div>
										</div>
									</div>
								</div>
								<img src="image/dy.jpg" sstyle="height:110px;width:110px;">
							</div>

						</div>
						<div class="card" style="height:110px;width:110px;">
							<div class="blurring dimmable image"
								style="height:110px;width:110px;">
								<div class="ui dimmer">
									<div class="content">
										<div class="center" style="height:110px;width:110px;">
											<div class="ui inverted button"
												style="height:40px; width:90px;">
												<a href="#">查看</a>
											</div>
										</div>
									</div>
								</div>
								<img src="image/gs.jpg" style="height:110px;width:110px;">
							</div>
						</div>
						<div class="card" style="height:110px;width:110px;">
							<div class="blurring dimmable image"
								style="height:110px;width:110px;">
								<div class="ui dimmer">
									<div class="content">
										<div class="center" style="height:110px;width:110px;">
											<div class="ui inverted button"
												style="height:40px; width:90px;">
												<a href="#">查看</a>
											</div>
										</div>
									</div>
								</div>
								<img src="image/index1.jpg" style="height:110px;width:110px;">
							</div>

						</div>
						<div class="card" style="height:110px;width:110px;">
							<div class="blurring dimmable image"
								style="height:110px;width:110px;">
								<div class="ui dimmer">
									<div class="content">
										<div class="center" style="height:110px;width:110px;">
											<div class="ui inverted button"
												style="height:40px; width:90px;">
												<a href="#">查看</a>
											</div>
										</div>
									</div>
								</div>
								<img src="image/index.jpg" style="height:110px;width:110px;">
							</div>

						</div>
						<div class="card" style="height:110px;width:110px;">
							<div class="blurring dimmable image"
								style="height:110px;width:110px;">
								<div class="ui dimmer">
									<div class="content">
										<div class="center" style="height:110px;width:110px;">
											<div class="ui inverted button"
												style="height:40px; width:90px;">
												<a href="#">查看</a>
											</div>
										</div>
									</div>
								</div>
								<img src="image/index2.jpg" style="height:110px;width:110px;">
							</div>

						</div>
						<script>
							$('.special.cards .image').dimmer({
								on : 'hover'
							});
						</script>

					</div>
				</div>
				<!--右下 轮转-->
				<div class="bottom">
					<div class="ui top attached tabular menu" style="height:50px;">
						<a class="active item" data-tab="first" style="width: 100px;">热门职位</a>
						<a class="item" data-tab="second" style="width: 100px;">最新职位</a>
					</div>
					<div class="ui bottom attached active tab segment" data-tab="first"
						style="height:750px;">
						<c:forEach items="${heatJobs}" var="heatJob">
							<div class="bottom-t">
								<div class="left" style="width:450px;">
									<ul class="u1">
										<li class="li1"><a href="showJob.do?id=${heatJob.id}">${heatJob.jobName}</a></li>
										<li class="li1">[${heatJob.jobRegion}]</li>
										<li class="li2"><fmt:formatDate
												value="${heatJob.publishDate}" type="date"
												dateStyle="default" /> 发布</li>
									</ul>
								</div>
								<div class="right">
									<p>${heatJob.companyName}</p>
								</div>
							</div>
							<div class="bottom-m">
								<div class="left">
									<ul class="u2">
										<li class="li1">${heatJob.salary}K</li>
										<li class="li2">经验${heatJob.jobExpr}</li>
										<li class="li2">${heatJob.education}</li>
									</ul>
								</div>
								<div class="right">
									<p>移动互联网，企业服务/成长性</p>
								</div>
							</div>
							<div class="bottom-b">
								<div class="left">
									<ul class="u3">
										<li class="li1">"多福利、欢乐的工作氛围"</li>
									</ul>
								</div>
								<div class="right">
									<ul class="u4">
										<li class="li1">单身住宿</li>
										<li class="li1">股票期权</li>
										<li class="li1">午餐补助</li>
									</ul>
								</div>
							</div>
						</c:forEach>
						<div class="fy">
							<ul class="pager">
							<c:if test="${pageindex>1}">
							    <li class="previous"><a href="getHeatJobs.do?pageindex=${pageindex-1}&pagenum=5">&larr; 上一页</a></li>
							 </c:if>   
							    <li class="next"><a href="getHeatJobs.do?pageindex=${pageindex+1}&pagenum=5">下一页 &rarr;</a></li>
							</ul>
						</div>
					</div>
					<div class="ui bottom attached tab segment" data-tab="second"
						style="height:750px;">
						<c:forEach items="${earlyJobs}" var="earlyJob">
							<div class="bottom-t">
								<div class="left" style="width:450px;">
									<ul class="u1">
										<li class="li1"><a href="showJob.do?id=${earlyJob.id}">${earlyJob.jobName}</a></li>
										<li class="li1">[${earlyJob.jobRegion}]</li>
										<li class="li2"><fmt:formatDate
												value="${earlyJob.publishDate}" type="date"
												dateStyle="default" /> 发布</li>
									</ul>
								</div>
								<div class="right">
									<p>${earlyJob.companyName}</p>
								</div>
							</div>
							<div class="bottom-m">
								<div class="left">
									<ul class="u2">
										<li class="li1">${earlyJob.salary}K</li>
										<li class="li2">经验1-3年</li>
										<li class="li2">/本科</li>
									</ul>
								</div>
								<div class="right">
									<p>移动互联网，企业服务/成长性</p>
								</div>
							</div>
							<div class="bottom-b">
								<div class="left">
									<ul class="u3">
										<li class="li1">"多福利、欢乐的工作氛围"</li>
									</ul>
								</div>
								<div class="right">
									<ul class="u4">
										<li class="li1">单身住宿</li>
										<li class="li1">股票期权</li>
										<li class="li1">午餐补助</li>
									</ul>
								</div>
							</div>
						</c:forEach>
						<div class="fy ">
							<ul class="pager">
							<c:if test="${pageindex>1}">
							    <li class="previous"><a href="getEarlyJobs.do?pageindex=${pageindex-1}&pagenum=5">&larr; 上一页</a></li>
							  </c:if>
							    <li class="next"><a href="getEarlyJobs.do?pageindex=${pageindex+1}&pagenum=5">下一页 &rarr;</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--尾部-->
	<div class="foot" >
		<!--尾部顶-->
		<div class="foot-top">
			<div class="ffbottom">
				<div class="left">
					<dl>
						<dt>关于我们</dt>
						<dd>
							<a href="">关于我们</a>
						</dd>
						<dd>
							<a href="">加入我们</a>
						</dd>
						<dd>
							<a href="">联系我们</a>
						</dd>
					</dl>
					<dl>
						<dt>找工作</dt>
						<dd>
							<a href="">创建简历</a>
						</dd>
						<dd>
							<a href="">搜搜职位</a>
						</dd>
						<dd>
							<a href="">全部招聘</a>
						</dd>
					</dl>

					<dl>
						<dt>招人才</dt>
						<dd>
							<a href="">发布职位</a>
						</dd>
						<dd>
							<a href="">招聘管理</a>
						</dd>
						<dd>
							<a href="">招聘职位大全</a>
						</dd>
					</dl>
					<dl>
						<dt>帮助</dt>
						<dd>
							<a href="">网站申明</a>
						</dd>
						<dd>
							<a href="">使用条款</a>
						</dd>
						<dd>
							<a href="">安全中心</a>
						</dd>
					</dl>

				</div>
				<div class="right">
					<a
						style="font-size:16px;color:#C39; margin-left:40px; line-height:80px;">400-100-5678</a><br>
					<a
						style="color:#000; margin-left:25px; line-height:10px; font-size:16px;">周一至周日
						8:00-18:00</a><br> <span>24小时在线客服</span>
				</div>
			</div>
		</div>

	</div>

	<script>
		function openCity() {
			window.open('city.jsp', '',
					'width=500px,height=470px,left=400px,top=150px');
		}
	</script>

	<script src="style/js/index.js"></script>
	<script type="text/javascript" src="style/js/home.min.js"></script>
	<script type="text/javascript" src="style/js/count.js"></script>
	<script type="text/javascript" src="style/js/core.min.js"></script>
	<script type="text/javascript" src="style/js/popup.min.js"></script>
</body>
</html>
