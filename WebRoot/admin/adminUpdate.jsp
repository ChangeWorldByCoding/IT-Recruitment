<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
      <title>互联网招聘网--密码修改</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link type="text/css" href="style/css/semantic.css" rel="stylesheet">
		<link type="text/css" href="style/css/updatepasw.css" rel="stylesheet">
		<script src="style/js/jquery.min.js"></script>
		<script type="text/javascript" src="style/js/semantic.js"></script>
	</head>
	<body>
		<div class="update">
			<div class="update-top"><span>修改密码</span>
			<span style="float:right;margin-right:10px;"><a href="admin/adminSetting.jsp">返回</a></span></div>
			<form action="adminUpdatePasw.do" method="post">
				<ul>
				     <li><input type="text" name="username" value="${admin.userName}" style="display:none;"/></li>
					  <li><p style="color: red; font-size: 16px;">${message1}</p></li>
					 <li><p style="color: red; font-size: 16px;">${message2}</p></li>
					<li><label>当&nbsp;&nbsp;前&nbsp;&nbsp;密&nbsp;码</label><input type="password" value="${admin.passWord}" name="pasw1" readonly="readonly"/></li>
					<li><label>输入新密码</label><input type="password" name="pasw2"/></li>
					<li><label>确认新密码</label><input type="password" name="pasw3"/></li>
					<li><button class="ui primary button myb" type="submit">Save </button></li>
			  </ul>
			</form>
		</div>
	</body>
</html>

