<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>互联网招聘网--宣传片</title>
    <link href="style/css/Yipai.css" rel="stylesheet">

  </head>
  
  <body>
  <jsp:include page="head.jsp"></jsp:include>
    <div class="body">
        <div class="video">
        <embed src="http://player.video.qiyi.com/c520fcc17327a3a6b51ac78048a28184/0/0/w_19rtll1zf9.swf-albumId=4584162809-tvId=4584162809-isPurchase=0-cnId=20" allowFullScreen="true" quality="high" width="800" height="450" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
        </div>
  </div>
  </body>
</html>
