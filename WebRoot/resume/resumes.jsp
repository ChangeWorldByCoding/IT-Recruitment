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
     <title>互联网招聘网--简历管理</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="style/css/bootstrap.min.css" rel="stylesheet">
		<link type="text/css" href="style/css/semantic.css" rel="stylesheet">
		<link type="text/css" href="style/css/adminMana.css" rel="stylesheet">
		<link href="style/css/jquery-accordion-menu.css" rel="stylesheet" type="text/css" />
		<link href="style/css/font-awesome.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="style/js/bootstrap.min.js"></script>
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
	
  </head>
  
  <body>
     <div class="bo">
			 <div class="bo-left">
			<div id="jquery-accordion-menu" class="jquery-accordion-menu red"
				style="width: 100px;margin-top: 80px;">
				<div class="jquery-accordion-menu-header" id="form"></div>
				<ul id="demo-list">

					<li class="active"><a href="admin.jsp"><i
							class="fa fa-home"></i>首页 </a></li>
					<li><a href="job/JobManagement.jsp"><i class="fa fa-glass"></i>职位管理 </a></li>
					<li><a href="resume/resumes.jsp"><i class="fa fa-cog"></i>简历管理 </a>
						<ul class="submenu">
							<li><a href="#ul01">下载的简历</a></li>
							<li><a href="#ul02">应聘的简历 </a></li>
						</ul></li>
					<li><a href=""><i class="fa fa-home"></i>搜索简历 </a></li>
					<li><a href="admin/adminSetting.jsp"><i class="fa fa-home"></i>账户管理 </a></li>
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
						<input placeholder="输入关键字,去简历库搜索心仪的简历" type="text">
						<i class="search icon"></i>
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
									<div class="ui combo top right pointing dropdown icon button" style="width: 50px;height: 30px;">
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
                    <div class="brb-left" style="float: left;">
                    	<div class="ypjl" style="height: 300px;">
                    		<ul id="ul01">
                    			<li style="color: #F85659;">应聘的简历</li>
                    			<li class="li02"><a href="getResumes0.do" target="myFrameId">待筛选</a></li>
                    			<li class="li02"><a href="getResumes1.do" target="myFrameId">待沟通</a></li>
                    			<li class="li02"><a href="getResumes2.do" target="myFrameId">已安排面试</a></li>
                    			<li class="li02"><a href="getResumes3.do" target="myFrameId">不合适简历</a></li>
                    		</ul>
                    		
                    	</div>
                    	<div class="xzjl" style="height: 300px;">
                    		<ul id="ul02">
                    			<li style="color: #F85659;">下载的简历</li>
                    			<li class="li02"><a href="">待沟通</a></li>
                    			<li class="li02"><a href="">已安排面试</a></li>
                    			<li class="li02"><a href="">不合适简历</a></li>
                    			<li class="li02"><a href="">简历上传</a></li>
                    		</ul>
                    	</div>
                    </div>
                   
                     <div class="brb-right">
                     	 
                         
                     	<div class="brbm-content">
                         		  <iframe name="myFrameId"  frameborder="0" style="width:700px;height:500px;margin-left:-200px;">
                         		  </iframe>  
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
