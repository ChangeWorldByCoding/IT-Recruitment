<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>互联网招聘网--游客登录</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<link type="text/css" href="style/css/semantic.css" rel="stylesheet">
	<script type="text/javascript" src="style/js/semantic.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="style/css/login.css">
  </head>
  
  <body>
    <div class="top">
			<div class="left"><img src="image/招聘.png"><br><span>IT招聘网</span></div>
			<div class="middle">
				<div class="m-top"></div>
				<div class="m-bottom">
					<div class="m-left">
						<form class="myform" action="userLogin.do" method="post">
							<input type="text" placeholder="请输入用户名" class="myinput" name="userName"><br>
							<input type="password" placeholder="请输入密码" class="myinput" name="passWord"><br>
							<p style="color:red;font-size:15px;margin-top:10px;">${myMessage}</p>
							<p  class="p1">
								<a href="#">忘记密码?</a>
							</p>
							<button class="positive ui button mybutton">登录</button>
							<p class="p2">还没有账号?
								<a href="register.jsp">立即注册</a>
							</p>
						</form>
					</div>
					
					<div class="m-middle"><img src="image/divider.jpg"></div>
					<div class="m-right">
						<span style="margin-left:10px; font-size:18px;">使用以下账号直接登录：</span><br>
						<a href="http://weibo.com/">
							<img src="image/微博.png" style=" width:50px; height:50px;                        margin-left:30px;"></a>
						<a href="http://w.qq.com/">
							<img src="image/qq.png" style="width:50px; height:50px;"></a>
						<a href="https://wx.qq.com/">
							<img src="image/微信.png" style="width:50px; height:50px;">
							<br></a>
						<img src="image/ewm.png" style="width:150px; height:150px; margin-left:30px; margin-top:50px;"><br>
						<span style="margin-left:50px; font-size:18px;">[扫码下载APP]</span>
					</div>
				</div>
			</div>
			<div class="right"></div>
		</div>
  </body>
</html>
