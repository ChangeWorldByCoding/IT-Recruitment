<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>互联网招聘网--企业用户注册</title>
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
						
						<span style="font-size: 16px;">企业用户注册</a>
					</li>

				</ul>
			</div>
	</div>
        <div class="admin">
        	<div class="admin-content">
        	
		      <div class="ui bottom attached active tab segment" data-tab="first" style="height:440px;">
		        <form action="adminRegister.do" method="post">
		             <input type="text" placeholder="邮箱" name="email" id="email"/>
		        	<input type="text" placeholder="手机号" name="tel" id="mobile"/>
		        	<input type="text" placeholder="账户名" name="userName" onblur="checkUser(this)" onfocus="focusUser(this)"/>
		        	<p id="sp1"><p>
		        	<input type="password" placeholder="密码" name="passWord" id="password"/>
		        	<input type="text" placeholder="图片验证码" name="code" style="width:200px;"/>
		        	<img src="<%=path %>/codeUtil" id="img" onclick="document.getElementById('img').src='<%=path %>/codeUtil?'+new Date().getTime();" style="float:right;margin-top:10px;"/> 
		        	<p style="color:red;">${message}</p>
		        	<input type="submit" value="注册" style="background:#F73E41;"/>
		        </form>
		        <div class="admin-bottom" style="margin-top: -1px;">
		        	<a href="admin/adminLogin.jsp">已有账号?立即登录</a>
		        </div>
		      </div>
		      	
		     </div> 	
        </div>       
    
      
</body>
 <script type="text/javascript">
	   function checkUser(user){
		   var name=user.value;
		   $.post("ajaxAdmin.do",{name:name},function(data){
			  $("#sp1").html(data); 
		   });
	   }
	   function focusUser(user){
			  $("#sp1").html(""); 
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
