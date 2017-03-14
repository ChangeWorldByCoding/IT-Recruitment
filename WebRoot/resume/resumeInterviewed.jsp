<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML">
<html>
  <head>
    <base href="<%=basePath%>">
     <title>简历管理</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="style/css/bootstrap.min.css" rel="stylesheet">
		<link type="text/css" href="style/css/semantic.css" rel="stylesheet">
		<link type="text/css" href="style/css/adminMana.css" rel="stylesheet">
		<script type="text/javascript" src="style/js/bootstrap.min.js"></script>
	    <script src="style/js/jquery.min.js"></script>
		<script type="text/javascript" src="style/js/semantic.js"></script>
		
	
  </head>
   <style>
      p{color:red;font-size:20px;float:right;}
      
    </style>
  <body>
              
                	<table class="table">
							<thead>
								<tr>
									<th>序号</th>
									<th>用户ID</th>
									<th>用户名</th>
									<th>简历</th>
								</tr>
							</thead>
							<tbody>
							   <c:forEach items="${resumeList2}" var="resumeList2" varStatus="resume">
								<tr class="danger">
									<td>${resume.count}</td>
									<td>${resumeList2.uid}</td>
									<td>${resumeList2.userName}</td>
									<td><a href="dowloadResume?fileName=${resumeList2.fileName}">${resumeList2.fileName}</a></td>
								</tr>
								</c:forEach>
								
							</tbody>
				</table>
                   <p>已安排面试简历,共计${num}份</p>   
	</body>
	
</html>
