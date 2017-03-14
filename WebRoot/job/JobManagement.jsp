<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>互联网招聘网--职位管理</title>
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
  </head>
  
  <body>
   <div class="bo">
			 <div class="bo-left">
			<div id="jquery-accordion-menu" class="jquery-accordion-menu red"
				style="width: 100px;margin-top: 80px;">
				<div class="jquery-accordion-menu-header" id="form"></div>
				<ul id="demo-list">

					<li class="active"><a href="admin/admin.jsp"><i
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
                    <div class="brb-left">
                    	<a href="addJob.do"><button style="background:brown;">
                    	<img src="image/jh.png" style="width:30px;height: 30px;">
                    	发布新职位</button></a><br>
                    	<a href="adminJob.do" target="myFrame"><button class="bu1">显示中的职位</button></a><br>
                    	<a href=""><button class="bu2" id="bu2">暂停职位</button></a><br>
                    	<a href=""><button class="bu2" id="bu3">下线职位</button></a><br>
                    	<a href=""><button class="bu2" id="bu4">审核中的职位</button></a><br>
                    	<a href=""><button class="bu2" id="bu5">草稿箱</button></a><br>
                    	<a href=""><button class="bu2" id="bu6">职位搬家</button></a>
                    </div>
                     <div class="brb-right">
                     	 <div class="brbm-content">
                         		  <iframe name="myFrame"  frameborder="0" style="width:700px;height:500px;margin-left:-200px;">
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
