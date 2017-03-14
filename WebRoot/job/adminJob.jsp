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
									<th>职位名称</th>
									<th>职位类型</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
							   <c:forEach items="${adminJobList}" var="adminJobList" varStatus="adminJob">
								<tr class="danger">
									<td>${adminJob.count}</td>
									<td>${adminJobList.jobName}</td>
									<td>${adminJobList.jobType}</td>
									<td><a href="adminJobDelete.do?id=${adminJobList.id}">删除</a></td>
								</tr>
								</c:forEach>
								
							</tbody>
				</table>
	</body>
	
</html>
