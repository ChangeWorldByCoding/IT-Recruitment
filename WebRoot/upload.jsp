<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String jobid=request.getParameter("jobid");
int jobid_=Integer.parseInt(jobid);
request.setAttribute("jobid_", jobid_);
String fileName=request.getParameter("filename");
request.setAttribute("fileName_", fileName);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'upload.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link href="style/css/semantic.css" rel="stylesheet"/>
	<script src="style/js/jquery.min.js"></script>
	<script src="style/js/semantic.js"></script>
  </head>
  
  <body>
        <form action="uploadResume.do" method="post" enctype="multipart/form-data">
			  <input type="text" name="jobId" value="${jobid_}" style="display:none;">
			<input type="file" name="fileName"/>
			<input type="text" name="filename" value="${fileName_}" style="display:none;" />
		    <input type="text" name="uid" value="${u.id}" style="display:none;" />
			<input type="text" name="userName" value="${user.userName}" style="display:none;"/>  
			<input type="submit" value="上传" style="margin-left: -70px;"/>
		</form>
  </body>
</html>
