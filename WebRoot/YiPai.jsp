<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>互联网招聘网--一拍.即合</title>
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="style/css/bootstrap.min.css" rel="stylesheet">
      <link href="style/css/style.css" rel="stylesheet">
      <link href="style/css/Yipai.css" rel="stylesheet">
      <script>
		$(document).ready(function() {
			$('.menu .item').tab();
		});
	</script>

  </head>
  
  <body>
      <!--头部-->
		<jsp:include page="head.jsp"></jsp:include>
           <!--体-->
           <div class="header">
              <h1 style="margin-top:100px;margin-left:370px;">IT招聘一拍，重新定义互联网人才拍卖</h1>
              <p style="font-size:17px; margin-left:350px;">
              [3年+工作经验，30W+年薪，互联网技术、产品、设计、运营、市场]</p>
              <p style="font-size:17px; margin-left:515px;">1V1专业顾问私人订制</p>
              <p style="font-size:17px; margin-left:455px;">限时展示，风尖互联网企业机会任你选</p>
              <a href="video.jsp">
               <img src="image/播放.png" style="cursor:pointer;">
               </a><br />
               <button>我要申请</button>
           </div>
           <div class="banner">
              <h1>参与企业</h1>
              <div class="banner-b"><img src="image/company_logo.png"></div>
           </div>
            <div class="logo">
                <p>一拍&nbsp;&nbsp;.&nbsp;&nbsp;即合&nbsp;&nbsp;,&nbsp;&nbsp;真的一拍即合</p>
               <button>我要申请</button>
            </div>
  </body>
</html>
