<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>互联网招聘网--企业用户登录</title>
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="style/css/bootstrap.min.css" rel="stylesheet">
      <link href="style/css/style.css" rel="stylesheet">
      <link type="text/css" href="style/css/semantic.css" rel="stylesheet">
      <script src="style/js/jquery.min.js"></script>
      <script type="text/javascript" src="style/js/semantic.js"></script>
      <link href="style/css/admin.css" rel="stylesheet">
      <script>
		$(document).ready(function() {
			$('.menu .item').tab();
		});
	</script>

  </head>
  
  <body>
      <!--头部-->
		<div class="head">

			<div class="head-top">
				<ul class="ul1">
					<li>
						<a href="#" style="font-size:24px;color: #F85659;"><b>假期IT招聘网</b></a>
					</li>
					<li>
						
						<span style="font-size: 16px;">企业用户登录</a>
					</li>

				</ul>
			</div>
	</div>
        <div class="admin">
        	<div class="admin-content">
        	<div class="ui top attached tabular menu" style="height:50px;">
				<a class="active item" data-tab="first" style="width: 150px;"><img src="image/人头.png">普通登录</a>
			    <a class="item" data-tab="second" style="width: 160px;"><img src="image/手机.png" />手机动态码登录</a>
			</div>
		      <div class="ui bottom attached active tab segment" data-tab="first" style="height:440px;">
		        <form action="adminLogin.do" method="post">
		        	<input type="text" placeholder="邮箱/用户名" name="userName"/>
		        	<input type="password" placeholder="密码(6-10位数字和字母)" name="passWord"/>
		        	<p style="color:red;">${myMessage}</p>
		        	<input type="submit" value="登录" style="background:#F73E41;"/>
		        </form>
		        <div class="admin-bottom">
		        	<a href="admin/adminRegister.jsp">没有账号?立即注册</a>
		        </div>
		      </div>
		      	<div class="ui bottom attached tab segment" data-tab="second" style="height:440px;">
		             <form action="admin.jsp" method="post">
		             <input type="text" placeholder="手机号" />
		             <input type="text" placeholder="短信验证码"style="width:200px;"/>
		            <input type="submit" name="" value="获取验证码" class="su1"/>
		            <input type="submit" value="登录" style="background:#F73E41;"/>
		            </form>
		            <div class="admin-bottom">
		        	<a href="admin/adminRegister.jsp">没有账号?立即注册</a>
		             </div>
		      	</div>
		     </div> 	
        </div>      
  </body>
</html>
