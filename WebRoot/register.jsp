<%@ page language="java" import="java.util.*,com.gmg.service.*,com.gmg.util.*,
com.gmg.domain.*,com.gmg.service.impl.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
JobService js= (JobService) ApplicationUtil.getBean(JobService.SERVER_NAME);
Job job=js.getById("1");
request.setAttribute("job", job);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
  <title>互联网招聘网--游客注册</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link type="text/css" href="style/css/semantic.css" rel="stylesheet">
	<link type="text/css" href="style/css/login.css" rel="stylesheet">
	<script src="style/js/jquery.min.js"></script>
	<script type="text/javascript" src="style/js/semantic.js"></script>
	<script>
		$(document).ready(function() {
			$('.menu .item').tab();
		});
	</script>
  
  </head>
  
  <body>
     <div class="top">
			<div class="left"><img src="image/招聘.png"><br><span>IT招聘网</span></div>
			<div class="middle">
				<div class="m-top"></div>
				<div class="m-bottom">
					<div class="m-left">
						
						<div class="ui bottom attached active tab segment" data-tab="first" style="height:410px;">
							<form class="myform" action="userRegister.do" method="post">
								<input type="text" placeholder="请输入常用手机号" class="myinput" name="tel" id="mobile"/><br>
								<input type="text" placeholder="请输入常用邮箱" class="myinput" name="email" id="email"/><br>
								<input type="text" placeholder="请输入用户名" class="myinput" name="userName" onblur="checkUser(this)" onfocus="focusUser(this)"/>
								 <span id="sp"></span><br>
								<input type="password" placeholder="请输入密码" class="myinput" name="passWord" id="password"/><br>
								<input type="text" placeholder="请证明你不是机器人" class="myin" name="code"/>
                                <img src="<%=path %>/codeUtil" id="img3" 
                                onclick="document.getElementById('img3').src='<%=path %>/codeUtil?'+new Date().getTime();"
                                style="float:right;margin-top:20px;margin-right:75px;"/> 
                                 <span style="color: red;">${message}</span>
								<br>
								<input type="checkbox" checked="checked"/>
								<span>我已阅读并同意</span><span style="color: #00B38A;">《假期招聘网协议》</span><br><br>
								<button class="positive ui button mybutton">注册</button>
							</form>
						</div>
						
					</div>
			
				<div class="m-middle"><img src="image/divider.jpg">
				</div>

				<div class="m-right">
					<span style="margin-left:30px; font-size:18px;">已有账号直接登录：</span><br>
					<a href="login.jsp" style="font-size: 18px;margin-left: 30px;">直接登录</a>
					<img src="image/箭头.png" style="margin-left: 10px;"><br/>
					<a href="http://weibo.com/">
						<img src="image/微博.png" style=" width:50px; height:50px;margin-left:30px;"></a>
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
  <script type="text/javascript">
	   function checkUser(user){
		   var name=user.value;
		   $.post("ajax.do",{name:name},function(data){
			  $("#sp").html(data); 
		   });
	   }
	   function focusUser(user){
			  $("#sp").html(""); 
	   }
	</script>
	  <script type="text/javascript">
		   $("document").ready(function(){
			  $("#mobile").blur(function(){
				  var mobile=$(this).val();
				  var pattern=/^1(3|5|7|8)[0-9]{9}$/g;
				  var t=pattern.test(mobile);
				  if(t){}else{alert("手机号格式不正确");}
			  }); 
			  $("#email").blur(function(){
				  var email=$(this).val();
			      var pattern=/^[A-z0-9_\-]+\@(sina|sohu|163|qq)\.(com)$/g;
				  var t=pattern.test(email);
				  if(t){}else{alert("邮箱格式不正确");}
			  }); 
			  $("#password").blur(function(){
				  var password=$(this).val();
				  var pattern=/^[A-Z]{1}[A-z0-9]{5}$/g;
				  var t=pattern.test(password);
				  if(t){}else{alert("首字母必须大写");}
			  }); 
		   });
		</script>
</html>
