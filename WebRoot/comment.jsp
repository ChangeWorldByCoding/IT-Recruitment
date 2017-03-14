<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String jobid=request.getParameter("jobid");
int jobid_=Integer.parseInt(jobid);
request.setAttribute("jobid_", jobid_);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>互联网招聘网--发布评论</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
           <link type="text/css" href="style/css/semantic.css" rel="stylesheet">
               <link type="text/css" href="style/css/comment.css" rel="stylesheet">
          <script src="style/js/jquery.js"></script>
	     <script type="text/javascript" src="style/js/semantic.js"></script>
	    <script type="text/javascript" charset="utf-8" src="kindeditor-4.1.7/kindeditor.js"></script>  
        </head>
	<body>
	 <!--头部-->
	<div class="head">

		<div class="head-top">
			<ul class="ul1">
				<li><a href="#" style="font-size:24px;color: #F85659;"><b>假期IT招聘网</b></a>
				</li>
				<li><a href="#" onclick="openCity()">[切换城市]</a></li>

			</ul>
			<ul class="ul2" style="margin-left:30px">

				<li><a href="index.jsp">首页</a></li>
				<li><a href="getJobs.do?pageindex=1&pagenum=5">职位</a></li>
				<li><a href="#">公司</a></li>
				<li><a href="YiPai.jsp">一拍</a></li>

			</ul>
			<c:if test="${user.userName==null}">
			<ul class="ul3">

				<li><img src="image/人头.png"> <a href="login.jsp">求职者登录</a>
				</li>
				<li><img src="image/企业.png"> <a href="adminLogin.jsp">去企业版</a>
				</li>
				<li><img src="image/手机.png"> <a href="app.jsp">APP</a></li>
			</ul>
			</c:if>
			<c:if test="${user.userName!=null}">
			<ul class="ul3">

				<li><a href="login.jsp">消息</a>
				</li>
				<li>|</li>
				<li><a href="adminLogin.jsp">我的简历</a>
				</li>
				<li>|</li>
				<li><a href="app.jsp">投递箱</a></li>
				<li>|</li>
				<li>
				   <div class="ui teal buttons" style="width: 100px;height: 30px;margin-right:40px;">
							<div class="ui button" style="width: 100px;height: 30px;">${user.userName}</div>
								<div class="ui combo top right pointing dropdown icon button" style="width: 50px;height: 30px;">
								<i class="dropdown icon"></i>
								<div class="menu" style="width:90px;height: 130px;">
								    <div class="item">
									<a href="updatePasw.jsp">账号设置</a>
									</div>
									<div class="item">
										<a href="">我的订阅</a>
									</div>
									<div class="item">
										<a href="userLoginOut.do">退出登录</a>
									</div>
								</div>
						    </div>
					   </div>
					</li>
			</ul>
			</c:if>
		</div>
	</div>
	  <div class="main01" style="height:640px;">
			<div class="main-left" style="margin-top:20px;">
			   <div class="ui form">
			   	<form action="insertComment.do" method="post">
			   	 <input type="text" name="jobId" value="${jobid_}" style="display:none;">
				  <div class="field myfield">
				     <textarea id="editor_id" name="content" style="width:400px;height:350px;visibility:hidden;"></textarea>
				 </div>
				 <input type="submit" class="ui yellow button bt0" style="margin-left: 240px;" value="发布">
				 </form>
                </div>
            </div>
		     <div class="main-right">
			    
		    </div>
		</div>
	</body>
	<script>  
        KindEditor.ready(function(K) {  
              K.create('#editor_id', {  
                uploadJson : '/kindeditor-4.1.7/jsp/upload_json.jsp',  
                fileManagerJson : '/kindeditor-4.1.7/jsp/file_manager_json.jsp',  
                allowFileManager : true  
              });  
          });  
      </script> 
     <script>
			$('.combo.dropdown')
				.dropdown({
					action: 'combo'
				});
		</script>
</html>