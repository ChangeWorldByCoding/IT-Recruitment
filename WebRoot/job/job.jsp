<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>互联网招聘网--职位</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="style/css/bootstrap.min.css" rel="stylesheet">
<link href="style/css/style.css" rel="stylesheet">
<link href="style/css/job.css" rel="stylesheet">

</head>

<body>
	<jsp:include page="../head.jsp"></jsp:include>
	<div class="header">
	   <form action="showJobsByCompanyname.do?pageindex=1&pagenum=5" method="post">
		   <input type="text" placeholder="搜索职位、公司或地点" name="companyName">
		    <button type="submit">搜索</button>
	   </form>	
		<br> <span style="background:#00A57F;margin-top:-5px;">职位（500+）
		</span>&nbsp;&nbsp;&nbsp;<span style="margin-top:-5px;">公司（0）</span>

	</div>
	<div class="banner">
		<div class="banner-l">
			<ul>
				<li><span>工作地点：</span> <a href="#">全国</a> <a href="#">北京</a> <a
					href="#">上海</a> <a href="#">深圳</a> <a href="#">广州</a> <a href="#">杭州</a>
					<a href="#">成都</a> <a href="#">南京</a> <a href="#">武汉</a> <a
					href="#">西安</a> <a href="#">武汉</a> <a href="#">厦门</a> <a href="#">长沙</a>
					<a href="#">苏州</a> <a href="#">天津</a> <a href="#">重庆</a> <a
					href="#">郑州</a> <a href="#">青岛</a> <a href="#">合肥</a> <a href="#">太原</a>
					<a href="#">济南</a> <a href="#">大连</a></li>
				<li><span>工作经验：</span> <a href="#" class="aa">不限</a> <a
					href="#">应届毕业生</a> <a href="#">3年及以下</a> <a href="#">3-5年</a> <a
					href="#">5-10年</a> <a href="#">10年以上</a> <a href="#">不要求</a></li>
				<li><span>学历要求：</span> <a href="#" class="aa">不限</a> <a
					href="#">大专</a> <a href="#">本科</a> <a href="#">硕士</a> <a href="#">博士</a>
					<a href="#">不要求</a></li>
				<li><span>融资阶段：</span> <a href="#" class="aa">不限</a> <a
					href="#">未融资</a> <a href="#">天使轮</a> <a href="#">A轮</a> <a href="#">B轮</a>
					<a href="#">C轮</a> <a href="#">D轮</a> <a href="#">D轮以上</a> <a
					href="#">上市公司</a></li>
				<li><span>行业领域：</span> <a href="#" class="aa">不限</a> <a
					href="#">移动互联网</a> <a href="#">电子商务</a> <a href="#">金融</a> <a
					href="#">企业服务</a> <a href="#">教育</a> <a href="#">文化娱乐</a> <a
					href="#">游戏</a> <a href="#">O2O</a> <a href="#">硬件</a></li>
			</ul>
		</div>
		<div class="banner-r">
			<img src="image/NaG2Kw905.JPG"><br> <img
				src="image/gdis577.PNG">
		</div>
	</div>
	<div class="logo">

		<ul style="margin-top:-15px;">
			<li><span>排序方式：</span> <a href="#">默认</a> <a href="#" class="zz">最新</a>
			</li>
			<form action="showJobsBySalary.do?pageindex=1&pagenum=5" name="changeform" method="post">
				<li><span>最低薪资：</span> 
				<select name="lowSalary">
						<option value="2">2K</option>
						<option value="3">3K</option>
						<option value="4">4K</option>
						<option value="5">5K</option>
						<option value="6">6K</option>
				</select></li>
				<li><span>最高薪资：</span> <select name="topSalary"
					onchange="Dochange()">
						<option value="8">8K</option>
						<option value="10">10K</option>
						<option value="15">15K</option>
						<option value="20">20K</option>
						<option value="25">25K</option>
				</select>
				</li>
			</form>
			<li style="margin-left:40px;"><span>工作性质：</span>
				<form action="showJobsByJobprop.do" name="changeForm">
					<select onchange="DoOnchange()" name="jobProp"
						style="margin-top:-30px;margin-left: 80px;">
						<option>不限</option>
						<c:forEach items="${dircList}" var="dircList">
							<option value="${dircList.name}">${dircList.name}</option>
						</c:forEach>
					</select>
				</form></li>

		</ul>

	</div>
	<c:if test="${listJob!=null}">
	<c:forEach items="${listJob}" var="listJob">
		<div class="position">
			<div class="position-t">
				<div class="t-l">
					<span style="color:#00A57F;">${listJob.jobName}[${listJob.jobRegion}]</span>
					<span style="color:#CCC;">
						<fmt:formatDate value="${listJob.publishDate}"  type="date" dateStyle="default"/>
					发布</span><br>
					<span>${listJob.education}</span> 
					<span style="color:#FE8D39;">${listJob.salary}K</span>
					<span>${listJob.jobProp}</span>
				</div>
				<div class="t-m">
					<a href="showJob.do?id=${listJob.id}">
					<span>${listJob.companyName}</span></a> 
					<span style="color:#00A57F;">
						${listJob.jobType}</span>
				</div>
				<div class="t-r">
					<a href="showJob.do?id=${listJob.id}"><img
						src="upload/${listJob.img}"></a>

				</div>
			</div>
			<div class="position-b">
				<div class="b-l">
					<span>优秀的公司，很好的待遇</span>
				</div>
				<div class="b-r">
					<span>节日礼物</span> <span>五险一金</span> <span>带薪年假</span> <span>绩效奖金</span>
				</div>
			</div>
		</div>
	</c:forEach>

	<div class="barbar ">
		<h3>相关搜索：</h3>
		<br> <a href=" ">市场策划</a> <a href=" ">市场营销</a> <a href=" ">市场</a>
		<a href=" ">网络推广</a> <a href=" ">商务渠道</a> <a href=" ">市场总监</a> <a
			href=" ">app推广</a> <a href=" ">推广</a> <a href=" ">市场顾问</a>
	</div>
	<div class="fy ">
		<ul class="pagination pagination-lg ">
			<li><a href="# ">&laquo;</a></li>
			<li><a href="getJobs.do?pageindex=1&pagenum=5" target="view ">1</a></li>
			<li><a href="getJobs.do?pageindex=2&pagenum=5 ">2</a></li>
			<li><a href="getJobs.do?pageindex=3&pagenum=5">3</a></li>
			<li><a href="getJobs.do?pageindex=4&pagenum=5">4</a></li>
			<li><a href="getJobs.do?pageindex=5&pagenum=5 ">5</a></li>
			<li><a href="getJobs.do?pageindex=6&pagenum=5 ">6</a></li>
			<li><a href="# ">7</a></li>
			<li><a href="# ">8</a></li>
			<li><a href="# ">9</a></li>
			<li><a href="# ">...30</a></li>
			<li><a href="# ">&raquo;</a></li>
		</ul>

	</div>
  </c:if>
  <!-- 按工作名查询 -->
  <c:if test="${listJobByName!=null}">
	<c:forEach items="${listJobByName}" var="listJob">
		<div class="position">
			<div class="position-t">
				<div class="t-l">
					<span style="color:#00A57F;">${listJob.jobName}[${listJob.jobRegion}]</span>
					<span style="color:#CCC;">
						<fmt:formatDate value="${listJob.publishDate}"  type="date" dateStyle="default"/>
					发布</span><br>
					<span>${listJob.education}</span> <span style="color:#FE8D39;">${listJob.salary}K</span>
					<span>${listJob.jobProp}</span>
				</div>
				<div class="t-m">
					<a href="showJob.do?id=${listJob.id}">
					<span>${listJob.companyName}</span></a> 
					<span style="color:#00A57F;">
						${listJob.jobType}</span>
				</div>
				<div class="t-r">
					<a href="showJob.do?id=${listJob.id}"><img
						src="upload/${listJob.img}"></a>

				</div>
			</div>
			<div class="position-b">
				<div class="b-l">
					<span>优秀的公司，很好的待遇</span>
				</div>
				<div class="b-r">
					<span>节日礼物</span> <span>五险一金</span> <span>带薪年假</span> <span>绩效奖金</span>
				</div>
			</div>
		</div>
	</c:forEach>

	<div class="barbar ">
		<h3>相关搜索：</h3>
		<br> <a href=" ">市场策划</a> <a href=" ">市场营销</a> <a href=" ">市场</a>
		<a href=" ">网络推广</a> <a href=" ">商务渠道</a> <a href=" ">市场总监</a> <a
			href=" ">app推广</a> <a href=" ">推广</a> <a href=" ">市场顾问</a>
	</div>
	<div class="fy ">
		<ul class="pagination pagination-lg ">
			<li><a href="# ">&laquo;</a></li>
			<li><a href="showJobsByJobname.do?name=${name}&pageindex=1&pagenum=5" target="view ">1</a></li>
			<li><a href="showJobsByJobname.do?name=${name}&pageindex=2&pagenum=5 ">2</a></li>
			<li><a href="showJobsByJobname.do?name=${name}&pageindex=3&pagenum=5">3</a></li>
			<li><a href="showJobsByJobname.do?name=${name}&pageindex=4&pagenum=5">4</a></li>
			<li><a href="showJobsByJobname.do?name=${name}&pageindex=5&pagenum=5 ">5</a></li>
			<li><a href="showJobsByJobname.do?name=${name}&pageindex=6&pagenum=5 ">6</a></li>
			<li><a href="# ">7</a></li>
			<li><a href="# ">8</a></li>
			<li><a href="# ">9</a></li>
			<li><a href="# ">...30</a></li>
			<li><a href="# ">&raquo;</a></li>
		</ul>

	</div>
  </c:if>
  <!--按公司名称查询 -->
   <c:if test="${listJobByCname!=null}">
	<c:forEach items="${listJobByCname}" var="listJob">
		<div class="position">
			<div class="position-t">
				<div class="t-l">
					<span style="color:#00A57F;">${listJob.jobName}[${listJob.jobRegion}]</span>
					<span style="color:#CCC;">
						<fmt:formatDate value="${listJob.publishDate}"  type="date" dateStyle="default"/>
					发布</span><br>
					<span>${listJob.education}</span> <span style="color:#FE8D39;">${listJob.salary}K</span>
					<span>${listJob.jobProp}</span>
				</div>
				<div class="t-m">
					<a href="showJob.do?id=${listJob.id}">
					<span>${listJob.companyName}</span></a> 
					<span style="color:#00A57F;">
						${listJob.jobType}</span>
				</div>
				<div class="t-r">
					<a href="showJob.do?id=${listJob.id}"><img
						src="upload/${listJob.img}"></a>

				</div>
			</div>
			<div class="position-b">
				<div class="b-l">
					<span>优秀的公司，很好的待遇</span>
				</div>
				<div class="b-r">
					<span>节日礼物</span> <span>五险一金</span> <span>带薪年假</span> <span>绩效奖金</span>
				</div>
			</div>
		</div>
	</c:forEach>

	<div class="barbar ">
		<h3>相关搜索：</h3>
		<br> <a href=" ">市场策划</a> <a href=" ">市场营销</a> <a href=" ">市场</a>
		<a href=" ">网络推广</a> <a href=" ">商务渠道</a> <a href=" ">市场总监</a> <a
			href=" ">app推广</a> <a href=" ">推广</a> <a href=" ">市场顾问</a>
	</div>
	<div class="fy ">
		<ul class="pagination pagination-lg ">
			<li><a href="# ">&laquo;</a></li>
			<li><a href="showJobsByCompanyname.do?companyName=${companyName}&pageindex=1&pagenum=5" target="view ">1</a></li>
			<li><a href="showJobsByCompanyname.do?companyName=${companyName}&pageindex=2&pagenum=5 ">2</a></li>
			<li><a href="showJobsByCompanyname.do?companyName=${companyName}&pageindex=3&pagenum=5">3</a></li>
			<li><a href="showJobsByCompanyname.do?companyName=${companyName}&pageindex=4&pagenum=5">4</a></li>
			<li><a href="showJobsByCompanyname.do?companyName=${companyName}&pageindex=5&pagenum=5 ">5</a></li>
			<li><a href="showJobsByCompanyname.do?companyName=${companyName}&pageindex=6&pagenum=5 ">6</a></li>
			<li><a href="# ">7</a></li>
			<li><a href="# ">8</a></li>
			<li><a href="# ">9</a></li>
			<li><a href="# ">...30</a></li>
			<li><a href="# ">&raquo;</a></li>
		</ul>

	</div>
  </c:if>
   <!--按薪资区间查询 -->
   <c:if test="${listJobBySalary!=null}">
	<c:forEach items="${listJobBySalary}" var="listJob">
		<div class="position">
			<div class="position-t">
				<div class="t-l">
					<span style="color:#00A57F;">${listJob.jobName}[${listJob.jobRegion}]</span>
					<span style="color:#CCC;">
						<fmt:formatDate value="${listJob.publishDate}"  type="date" dateStyle="default"/>
					发布</span><br>
					<span>${listJob.education}</span> <span style="color:#FE8D39;">${listJob.salary}K</span>
				    <span>${listJob.jobProp}</span>
				</div>
				<div class="t-m">
					<a href="showJob.do?id=${listJob.id}">
					<span>${listJob.companyName}</span></a> 
					<span style="color:#00A57F;">
						${listJob.jobType}</span>
				</div>
				<div class="t-r">
					<a href="showJob.do?id=${listJob.id}"><img
						src="upload/${listJob.img}"></a>

				</div>
			</div>
			<div class="position-b">
				<div class="b-l">
					<span>优秀的公司，很好的待遇</span>
				</div>
				<div class="b-r">
					<span>节日礼物</span> <span>五险一金</span> <span>带薪年假</span> <span>绩效奖金</span>
				</div>
			</div>
		</div>
	</c:forEach>

	<div class="barbar ">
		<h3>相关搜索：</h3>
		<br> <a href=" ">市场策划</a> <a href=" ">市场营销</a> <a href=" ">市场</a>
		<a href=" ">网络推广</a> <a href=" ">商务渠道</a> <a href=" ">市场总监</a> <a
			href=" ">app推广</a> <a href=" ">推广</a> <a href=" ">市场顾问</a>
	</div>
	<div class="fy ">
		<ul class="pagination pagination-lg ">
			<li><a href="# ">&laquo;</a></li>
			<li><a href="showJobsBySalary.do?lowSalary=${lowSalary}&topSalary=${topSalary}&pageindex=1&pagenum=5" target="view ">1</a></li>
			<li><a href="showJobsBySalary.do?lowSalary=${lowSalary}&topSalary=${topSalary}&pageindex=2&pagenum=5 ">2</a></li>
			<li><a href="showJobsBySalary.do?lowSalary=${lowSalary}&topSalary=${topSalary}&pageindex=3&pagenum=5">3</a></li>
			<li><a href="showJobsBySalary.do?lowSalary=${lowSalary}&topSalary=${topSalary}&pageindex=4&pagenum=5">4</a></li>
			<li><a href="showJobsBySalary.do?lowSalary=${lowSalary}&topSalary=${topSalary}&pageindex=5&pagenum=5 ">5</a></li>
			<li><a href="showJobsBySalary.do?lowSalary=${lowSalary}&topSalary=${topSalary}&pageindex=6&pagenum=5 ">6</a></li>
			<li><a href="# ">7</a></li>
			<li><a href="# ">8</a></li>
			<li><a href="# ">9</a></li>
			<li><a href="# ">...30</a></li>
			<li><a href="# ">&raquo;</a></li>
		</ul>

	</div>
  </c:if>
	<script src="style/js/jquery.js "></script>
	<script src="style/js/bootstrap.min.js "></script>
</body>
<script>
	function DoOnchange() {
		document.changeForm.submit();
	}
	function Dochange() {
		document.changeform.submit();
	}
</script>
</html>
