<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
       <title>修改密码</title>
		<meta http-equiv="content-type" content="text/html;charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		 <link href="style/css/style.css" rel="stylesheet" media="screen">
		<link type="text/css" href="style/css/semantic.css" rel="stylesheet">
		<link type="text/css" href="style/css/updatepasw.css" rel="stylesheet">
		<script src="style/js/jquery.min.js"></script>
		<script type="text/javascript" src="style/js/semantic.js"></script>
  </head>
  
  <body>
   <!--头部-->
	<div class="head">

		<div class="head-top">
			<ul class="ul1">
				<li><a href="#" style="font-size:24px;color: #F85659;"><b>假期IT招聘网</b></a>
				</li>
				<li><a href="#" onclick="openCity()">[切换城市]</a></li>

			</ul>
			<ul class="ul2" style="margin-left:30px">

				<li><a href="index.jsp">首页</a></li>
				<li><a href="getJobs.do?pageindex=1&pagenum=5">职位</a></li>
				<li><a href="#">公司</a></li>
				<li><a href="YiPai.jsp">一拍</a></li>

			</ul>
			<c:if test="${user.userName==null}">
			<ul class="ul3">

				<li><img src="image/人头.png"> <a href="login.jsp">求职者登录</a>
				</li>
				<li><img src="image/企业.png"> <a href="adminLogin.jsp">去企业版</a>
				</li>
				<li><img src="image/手机.png"> <a href="app.jsp">APP</a></li>
			</ul>
			</c:if>
			<c:if test="${user.userName!=null}">
			<ul class="ul3">

				<li><a href="login.jsp">消息</a>
				</li>
				<li>|</li>
				<li><a href="adminLogin.jsp">我的简历</a>
				</li>
				<li>|</li>
				<li><a href="app.jsp">投递箱</a></li>
				<li>|</li>
				<li>
				   <div class="ui teal buttons" style="width: 80px;height: 30px;margin-right:40px;">
							<div class="ui button" style="width: 100px;height: 30px;">${user.userName}</div>
								<div class="ui combo top right pointing dropdown icon button" style="width: 50px;height: 30px;">
								<i class="dropdown icon"></i>
								<div class="menu" style="width:90px;height: 130px;">
								    <div class="item">
									<a href="updatePasw.jsp">账号设置</a>
									</div>
									<div class="item">
										<a href="">我的订阅</a>
									</div>
									<div class="item">
										<a href="userLoginOut.do">退出登录</a>
									</div>
								</div>
						    </div>
					   </div>
					</li>
			</ul>
			</c:if>
		</div>
	</div>
  <div class="bod">
			<div class="bod-left">
				<ul>
					<li>账号设置</li>
					<li id="li1_">账号绑定</li>
					<li id="li2_">修改密码</li>
				</ul>
			</div>
			<div class="bod-right" id="br1">
				<div class="br-top">
					<h3>账号绑定</h3>
					<p>当前登录账号：${user.userName}</p>
					<p>绑定后，你可以同时使用以下方式登录IT招聘网</p>
				</div>
				<div class="br-bottom">
					<img src="image/qq.png" />
					<span style="margin-left: 30px;">已绑定QQ账号</span>
					<a href="" style="margin-left: 20px;">解除绑定</a><br>
					<img src="image/微博.png">
					<a href="" style="margin-left: 20px;">绑定新浪微博账号</a>
				</div>
			</div>
			<div class="bod-right" id="br2">
				<div class="br-top" style="height: 60%;">
					<h3>修改密码</h3>
					<form action="updatePasw.do" method="post">
					    <input type="text" name="username" value="${user.userName}" style="display:none;"/>
						<p style="color: red; font-size: 16px;">${message1}</p>
						<p style="color: red; font-size: 16px;">${message2}</p>
						<label>当前密码</label><input type="password" name="pasw1" value="${user.passWord}" readonly="readonly"/><br>
						<label>新密码</label><input type="password" name="pasw2" style="margin-left: 38px;"/><br>
						<label>确认密码</label><input type="password" name="pasw3"/><br>
						<button class="ui primary button myb" type="submit">Save </button>
					</form>
				</div>
				
			 </div>
			</div>
			</body>
		   <script>
			$(document).ready(function(){
				$("#li1_").click(function(){
					$("#br2").hide();
					$("#br1").show();
				});
				$("#li2_").click(function(){
					$("#br1").hide();
					$("#br2").show();
				});
			});
			
		</script>
		 <script>
			$('.combo.dropdown')
				.dropdown({
					action: 'combo'
				});
		</script>
		<style>
		   .head ul li{
		   line-height: 30px;
		   }
		</style>
</html>
