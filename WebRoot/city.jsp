<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
        <title>互联网招聘网--选择城市</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link type="text/css" href="style/css/semantic.css" rel="stylesheet">
		<link type="text/css" href="style/css/city.css" rel="stylesheet">
		<script src="style/js/jquery.min.js"></script>
	    <script type="text/javascript" src="style/js/semantic.js"></script>

  </head>
  
  <body>
   <div class="city">
		<div class="top">
			<h3>切换城市</h3>
		</div>
		<div class="middle">
			<div class="middle-top">
			 <p><b>亲爱的用户您好：</b></p>
			 <p>切换城市分站，让我们为您提供更准确的职位信息。</p>
			</div>
			<div class="middle-b">
				<div class="middle-bt">
				<span style="margin-left: 40px;">点击进入</span>
				<button class="ui green basic button" style="margin-left: 10px;">全国站</button>
				<span>or</span><span>切换到以下城市</span>
			    </div>
			    <div class="middle-bb">
			    	 <button class="ui inverted teal basic button">北京站</button>
			    	  <button class="ui inverted teal basic button">上海站</button>
			    	  <button class="ui inverted teal basic button">杭州站</button><br/>
			    	   <button class="ui inverted teal basic button">广州站</button> 
			    	   <button class="ui inverted teal basic button">深圳站</button> 
			    	   <button class="ui inverted teal basic button">成都站</button>
			    </div>
			</div>
		</div>
		<div class="bottom">
			<p>其他城市正在开通中，敬请期待~</p>
		</div>
	</div>	
  </body>
</html>
