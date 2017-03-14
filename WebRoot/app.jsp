<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
      <title>互联网招聘网--APP</title>
      <meta http-equiv="content-type" content="text/html;charset=utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="style/css/bootstrap.min.css" rel="stylesheet">
      <link href="style/css/style.css" rel="stylesheet">
      <link href="style/css/app.css" rel="stylesheet">
</head>
  </head>
  
  <body>
    <!--头部-->
   <jsp:include page="head.jsp"></jsp:include>
     <!--app-->
     <div class="app">
        <div class="app-left"><img src="image/app.png"></div>
         <div class="app-right">
           <div class="top">
             <div class="top-top"><span style="font-size:25px; color:#2BC09D">IT招聘网</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:18px;">机会很多，&nbsp;&nbsp;&nbsp;</span><span style="font-size:18px;">不如</span><span style="font-size:20px; color:#2BC09D">&lfloor;挑&rceil;</span>
              <span style="font-size:18px;">满意的</span><br></div>
              <div class="top-bottom"><span style="font-size:15px;">随时查看最新职位，跟踪简历投递动态，用IT招聘网，更快捷</span>
              </div>
               </div>
           <div class="bottom">
             <div class="left">
                <div class="b1"><button>iPhone下载</button></div>
          <div class="b2"><button>Android下载</button></div>
             </div>
             <div class="right">
               <img src="image/ewm.png"><br>
               <span style="margin-left:27px; font-size:18px;">扫码下载APP</span>
             </div>
           </div>
         </div>
     </div>
   <script src="style/js/jquery.js"></script>
   <script src="style/js/bootstrap.min.js"></script>
  </body>
</html>
