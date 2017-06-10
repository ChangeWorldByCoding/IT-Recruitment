<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>互联网招聘网-职业详情</title>

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="style/css/bootstrap.min.css" rel="stylesheet">
<link type="text/css" href="style/css/semantic.css" rel="stylesheet">
<script src="style/js/jquery.js"></script>
<script type="text/javascript" src="style/js/semantic.js"></script>
<link href="style/css/style.css" rel="stylesheet">
<link href="style/css/detail.css" rel="stylesheet">

</head>

<body>
	<!--头部-->
	<jsp:include page="../head.jsp"></jsp:include>
	<!--体-->
	<div class="b">
		<div class="b-left">
			<!--左上-->
			<div class="b-left-top">
				<div class="l1">
					<span>${job_.companyName}</span><br> <span>${job_.jobName}</span>
				</div>
				<div class="r1">
					<img src="image/wjx.png" alt="收藏职位"> <img src="image/wx.png"
						alt="微信分享"> <img src="image/gth.png" alt="举报职位">
				</div>
				<div class="b1">
					<img src="image/logo.png"><span style="color:#F0F;">${job_.salary}K</span>
					<img src="image/logo.png"><span>${job_.jobRegion}</span> <img
						src="image/logo.png"><span>经验${job_.jobExpr}</span> <img
						src="image/logo.png"><span>${job_.education}及以上</span> <img
						src="image/logo.png"><span>${job_.jobProp}</span><br>
					<p style="margin-top:-14px;">职位诱惑 : 有挑战，高成长，广阔空间</p>
				</div>
			</div>
			<!--职位描述-->
			<div class="b-left-middle">
				${job_.jobIntr}
				<h6 style="margin-top:30px;">期待你的加入！</h6>
				<div class="t2">
					  <c:if test="${resume.fileName!=null}">
					    <div style="width:330px;height:20px;">
								<p style="color:red;font-size:20px;">${myMessage}</p>
							</div>
						<div class="deliverresume">
							<img src="image/文本.png"> <span>默认投递：附件简历
							<font style="background:#B0E0E6;">${resume.fileName}</font></span> 
							<button class="download" style="float:right;">下载</button>
							<button class="deliver" style="margin-right:100px;">投递</button>
						</div>
					  </c:if>
					  <c:if test="${resume.fileName==null}">
					     <div style="width:330px;height:20px;">
								<p style="color:red;font-size:20px;">${myMessage}</p>
							</div>
					      <div class="deliverresume">
								<img src="image/文本.png"> <span>你在拉勾还没有简历呢，你可以<a
									id="onlineResume">完善在 线简历</a>，也可直接投递
								</span>
							</div>
					</c:if>	
						<div class="uploadresume">
							
							<div style="width:330px;height:80px;">
								<form action="uploadResume.do" method="post"
									enctype="multipart/form-data">
									<input type="hidden" name="jobId" value="${job_.id}"> <input
										type="hidden" name="uid" value="${u.id}"> <input
										type="hidden" name="userName" value="${user.userName}">
									<input type="hidden" name="filename"
										value="${resume.fileName}"> <input type="file"
										name="fileName" style="margin-top:30px;margin-left:-190px;" />
									<button type="submit"
									 class="upload">上传</button>
								</form>
							</div>

						</div>
					</div>
				
				<input type="text" value="${user.userName}" id="MyUserName"
					style="display:none;">
				<button id="bid">去评价</button>
			</div>
			<!--相关评价-->
			<div class="b-left-bottom">
				<h4 style="margin-top:-20px;">面试评价</h4>
				<c:forEach items="${commentList}" var="comment">
					<div class="pj">
						<div class="l3">
							<img src="image/person.png"><br>
							<p style="margin-top:10px; margin-left:30px;">匿名</p>
						</div>
						<div class="r3">
							<span>描述相符</span> <img src="image/五角星(1).png"> <img
								src="image/五角星(1).png"> <img src="image/五角星(1).png">
							<img src="image/五角星.png"> <span>面试官</span> <img
								src="image/五角星(1).png"> <img src="image/五角星(1).png">
							<img src="image/五角星(1).png"> <img src="image/五角星.png">
							<span>公司环境</span> <img src="image/五角星(1).png"> <img
								src="image/五角星(1).png"> <img src="image/五角星.png"> <img
								src="image/五角星.png"><br>
							<p style="margin-top:-20px;">${comment.content}</p>

						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="b-right">
			<div class="b-right-top">
				<img src="upload/${job_.img}">
				<p>${job_.companyName}</p>
			</div>
			<div class="b-right-middle">
				<p>
					<strong>领域：</strong>企业服务，招聘
				</p>
				<p>
					<strong>规模：</strong>150-500人
				</p>
				<p>
					<strong>主页:</strong><a href="">${job_.main} </a>
				</p>
				<h4>
					<strong>地图</strong>
				</h4>
				<div id="allmap" style="width:290px;height:100px;"></div>
				<h4>
					<strong>工作地址</strong>
				</h4>
				<p>
					<font style="color:#00BAB3;">${job_.address}</font>
					-海淀大厦34号海置创投大厦4层
				</p>

			</div>
			<div class="b-right-bottom">
				<h4 style="margin-top:20px;">相似职位</h4>
				<hr>
				<div class="t4">
					<div class="l4">
						<img src="image/360.jpg">
					</div>
					<div class="r4">
						<p>Java</p>
						<p>15K-20K</p>
						<p>[北京-大兴区]&nbsp;&nbsp;360</p>
					</div>
				</div>
				<div class="t4">
					<div class="l4">
						<img src="image/mzjf.jpg">
					</div>
					<div class="r4">
						<p>Java开发工程师</p>
						<p>15K-20K</p>
						<p>[北京-昌平区]&nbsp;&nbsp;麦子金服</p>
					</div>
				</div>
				<div class="t4">
					<div class="l4">
						<img src="image/tl.png">
					</div>
					<div class="r4">
						<p>Java</p>
						<p>15K-25K</p>
						<p>[北京-安慧桥]&nbsp;&nbsp;通力互联</p>
					</div>
				</div>
				<div class="t4">
					<div class="l4">
						<img src="image/tx.jpg">
					</div>
					<div class="r4">
						<p>Java研发工程师</p>
						<p>25K-30K</p>
						<p>[北京-海淀区]&nbsp;&nbsp;腾讯</p>
					</div>
				</div>
				<div class="t4">
					<div class="l4">
						<img src="image/zr.png">
					</div>
					<div class="r4">
						<p>Java</p>
						<p>15K-20K</p>
						<p>[北京-大兴区]&nbsp;&nbsp;中软智强</p>
					</div>
				</div>
				<div class="t4">
					<div class="l4">
						<img src="image/gs.jpg">
					</div>
					<div class="r4">
						<p>Java开发工程师</p>
						<p>15K-20K</p>
						<p>[北京-大兴区]&nbsp;&nbsp;国舜科技</p>
					</div>
				</div>
			</div>

		</div>
	</div>

	<script src="style/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="http://api.map.baidu.com/api?v=2.0&ak=dWX6GOa4VHDShbi1LH2sw75As0qf44r0"></script>
</body>

<script type="text/javascript">
	$("#bid").click(function() {
		var userName = $("#MyUserName").val();
		if (!userName) {
			alert("请先登录");
			window.location = "login.jsp";
		} else {
			window.open('comment.jsp?jobid=${job_.id}', '_self');
		}
	});
	$(".deliver").click(function() {
		var userName = $("#MyUserName").val();
		if (!userName) {
			alert("请先登录");
			window.location = "login.jsp";
		} else {
			window.location.href="deliverResume.do?jobId=${job_.id}&uid=${u.id}&filename=${resume.fileName}&userName=${user.userName}";
		}
	});
	$(".download").click(function() {
		window.location.href="dowloadResume?fileName=${resume.fileName}";
		
	});
	$("#onlineResume").click(function() {
		var userName = $("#MyUserName").val();
		if (!userName) {
			alert("请先登录");
			window.location = "login.jsp";
		} else {
		}
	});
	$(".upload").click(function() {
		var userName = $("#MyUserName").val();
		if (!userName) {
			alert("请先登录");
			window.location = "login.jsp";
		} else {
		}
	});
</script>
<script type="text/javascript">
	var map = new BMap.Map("allmap");
	map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);
	map.setCurrentCity("北京");
	map.enableScrollWheelZoom(true);
</script>
<script src="style/js/jquery-1.11.3.min.js"></script>
<style type="text/css">
body,html,#allmap {
	width: 100%;
	height: 100%;
	margin: 0;
	font-family: "微软雅黑";
}
</style>
</html>
