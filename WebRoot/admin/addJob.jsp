<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

	<title>互联网招聘网--职位添加</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link type="text/css" href="style/css/semantic.css" rel="stylesheet">
		<link type="text/css" href="style/css/adminMana.css" rel="stylesheet">
		<link href="style/css/jquery-accordion-menu.css" rel="stylesheet" type="text/css" />
		<link href="style/css/font-awesome.css" rel="stylesheet" type="text/css" />
		<script src="style/js/jquery.min.js"></script>
		<script src="style/js/jquery-accordion-menu.js" type="text/javascript"></script>
		<script type="text/javascript" src="style/js/semantic.js"></script>
		<script type="text/javascript" src="style/js/my.js"></script>
		<script>
			$(function() {
				//顶部导航切换
				$("#demo-list li").click(function() {
					$("#demo-list li.active").removeClass("active")
					$(this).addClass("active");
				})
			})
		</script>	
      <script type="text/javascript">
		   $("document").ready(function(){
			  $("#mobile").blur(function(){
				  var mobile=$(this).val();
				  var pattern=/^1(3|5|7|8)[0-9]{9}$/g;
				  var t=pattern.test(mobile);
				  if(t){}else{alert("手机号格式不正确");}
			  }); 
			  $("#email").blur(function(){
				  var email=$(this).val();
				  var pattern=/^[A-z0-9_\-]+\@(sina|sohu|163|qq)\.(com)$/g;
				  var t=pattern.test(email);
				  if(t){}else{alert("邮箱格式不正确");}
			  }); 
		 });
		</script>

</head>

<body>
	<div class="bo">
		 <div class="bo-left">
			<div id="jquery-accordion-menu" class="jquery-accordion-menu red"
				style="width: 100px;margin-top: 80px;">
				<div class="jquery-accordion-menu-header" id="form"></div>
				<ul id="demo-list">

					<li class="active"><a href="amdin/admin.jsp"><i
							class="fa fa-home"></i>首页 </a></li>
					<li><a href="job/JobManagement.jsp"><i class="fa fa-glass"></i>职位管理 </a></li>
					<li><a href="resume/resumes.jsp"><i class="fa fa-cog"></i>简历管理 </a>
						<ul class="submenu">
							<li><a href="#">下载的简历</a></li>
							<li><a href="#">应聘的简历 </a></li>
						</ul></li>
					<li><a href=""><i class="fa fa-home"></i>搜索简历 </a></li>
					<li><a href=""><i class="fa fa-home"></i>账户管理 </a></li>
					<li><a href="#"><i class="fa fa-user"></i>职业信用 </a></li>

					<li><a href="#"><i class="fa fa-suitcase"></i>更多服务 </a>
						<ul class="submenu">
							<li><a href="#">英才测评 </a></li>

							<li><a href="#">英才研究院 </a></li>
						</ul></li>

				</ul>

			</div>
		</div>
		<div class="bo-right">
			<div class="bo-right-top">
				<div class="ui large icon input inpt">
					<input placeholder="输入关键字,去简历库搜索心仪的简历" type="text"> <i
						class="search icon"></i>
				</div>
				<div class="myright">
					<ul>
						<li><img src="image/message.png"></li>
						<li>消息</li>
						<li><img src="image/line.png"></li>
						<li><img src="image/person01.png"></li>
						<li>
							<div class="ui teal buttons" style="width: 100px;height: 30px;">
								<div class="ui button" style="width: 150px;height: 30px;">你好，${admin.userName}</div>
								<div class="ui combo top right pointing dropdown icon button"
									style="width: 50px;height: 30px;">
									<i class="dropdown icon"></i>
									<div class="menu" style="width: 100px;height: 130px;">
										<div class="item">
											<a href="admin/adminSetting.jsp">账号设置</a>
										</div>
										<div class="item">
											<a href="">企业信息</a>
										</div>
										<div class="item">
											<a href="adminLoginOut.do">退出登录</a>
										</div>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="bo-right-bottom">
				<div class="brb-left" style="width: 100%; height:1100px;">
					<h3>职位信息</h3>
					<span>当前账户还可以发布<font style="color:#F85659;">10</font>条职位
					</span>
					<div class="ui form myForm">
						<form action="jobAdd.do?pageindex=1&pagenum=5" method="post" enctype="multipart/form-data">
							<ul>
								<li><label>公司名称</label><input type="text" placeholder="请输入公司名称" name="companyName"></li>
								<li><label>职位名称</label><input type="text" placeholder="请输入职位名称" name="jobName"></li>
								<li><label>职位类别</label> 
								 <select name="jobType">
								     <option>请选择--------职位类别</option>
								   <c:forEach items="${jobTypes}" var="jobType">
										<option value="${jobType.name}">${jobType.name}</option>
									</c:forEach>	
								</select>
								</li>
								<li><label>工作区域</label><input type="text" placeholder="请输入工作区域" name="jobRegion"></li>
								<li class="li01"><label>学历要求</label>
								 <select name="education">
									  <c:forEach items="${educations}" var="education">
										<option value="${education.name}">${education.name}</option>
									  </c:forEach>
								</select>
								</li>
								<li>
								<label>工作经验</label> 
								<select name="jobExpr">
									<c:forEach items="${jobExprs}" var="jobExpr">
										<option value="${jobExpr.name}">${jobExpr.name}</option>
									  </c:forEach>
								</select>
								</li>
								<li><label>职位介绍</label> 
									 <textarea  name="jobIntr">
									 </textarea>
								</li>
								<li><label>联系人</label><input type="text" placeholder="请输入联系人" name="name"></li>
								<li><label>电话</label><input type="text" placeholder="请输入电话" name="phone" id="mobile"></li>
								<li><label>接受简历邮箱</label><input type="text" placeholder="请输入邮箱" name="email" id="email"></li>
								<li><label>公司福利</label><input type="text" placeholder="请输入福利" name="jobWelfare"></li>
 								<li><label>上传公司Logo:</label><input type="file" name="img"></li>
 								<li><label>公司网址</label><input type="text" placeholder="请输入公司网址" name="main"></li>
 								<li><label>公司地址</label><input type="text" placeholder="请输入公司地址" name="address"></li>
 								<li><label>工资金额</label><input type="text" placeholder="请输入工资金额" name="salary"></li>
								<li><label>工作性质</label>
								   <c:forEach items="${jobProps}" var="jobProp">
										<div class="ui slider checkbox myfield">
											<input  type="radio" name="jobProp" value="${jobProp.name}"><label>${jobProp.name}</label>
										</div>
									</c:forEach>
									
								</li>
								
							</ul>
							<button class="positive ui button myButton" type="submit">提交</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
  
      
<script>
		(function($) {
			$.expr[":"].Contains = function(a, i, m) {
				return(a.textContent || a.innerText || "").toUpperCase().indexOf(m[3].toUpperCase()) >= 0;
			};

			function filterList(header, list) {
				//@header 头部元素
				//@list 无需列表
				//创建一个搜素表单
				var form = $("<form>").attr({
						"class": "filterform",
						action: "#"
					}),
					input = $("<input>").attr({
						"class": "filterinput",
						type: "text"
					});
				$(form).append(input).appendTo(header);
				$(input).change(function() {
					var filter = $(this).val();
					if(filter) {
						$matches = $(list).find("a:Contains(" + filter + ")").parent();
						$("li", list).not($matches).slideUp();
						$matches.slideDown();
					} else {
						$(list).find("li").slideDown();
					}
					return false;
				}).keyup(function() {
					$(this).change();
				});
			}
			$(function() {
				filterList($("#form"), $("#demo-list"));
			});
		})(jQuery);
	</script>
	<script>
		jQuery("#jquery-accordion-menu").jqueryAccordionMenu();
	</script>
	<script>
		$('.combo.dropdown')
			.dropdown({
				action: 'combo'
			});
		
	</script>
	
</html>
