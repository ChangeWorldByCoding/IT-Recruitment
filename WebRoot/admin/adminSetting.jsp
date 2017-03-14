<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <meta charset="UTF-8">
		<title>互联网招聘网--账户设置</title>
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
				<div id="jquery-accordion-menu" class="jquery-accordion-menu red" style="width: 100px;margin-top: 80px;">
					<div class="jquery-accordion-menu-header" id="form"></div>
					<ul id="demo-list">

						<li class="active">
							<a href="admin/admin.jsp"><i class="fa fa-home"></i>首页 </a>
						</li>
						<li>
							<a href="job/JobManage.jsp"><i class="fa fa-glass"></i>职位管理 </a>
						</li>
						<li>
							<a href="resume/resumes.jsp"><i class="fa fa-cog"></i>简历管理 </a>
							<ul class="submenu">
								<li>
									<a href="#ul01">应聘的简历</a>
								</li>
								<li>
									<a href="#ul02">下载的简历 </a>
								</li>
							</ul>
						</li>
						<li>
							<a href=""><i class="fa fa-home"></i>搜索简历 </a>
						</li>
						<li>
							<a href="admin/adminSetting.jsp"><i class="fa fa-home"></i>账户管理 </a>
						</li>
						<li>
							<a href="#"><i class="fa fa-user"></i>职业信用 </a>
						</li>

						<li>
							<a href="#"><i class="fa fa-suitcase"></i>更多服务 </a>
							<ul class="submenu">
								<li>
									<a href="#">英才测评 </a>
								</li>

								<li>
									<a href="#">英才研究院 </a>
								</li>
							</ul>
						</li>

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
												<a href="adminSetting.jsp">账号设置</a>
											</div>
											<div class="item">
												<a href="">企业信息</a>
											</div>
											<div class="item">
												<a href="">退出登录</a>
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
                    	<div class="ypjl" style="height: 400px;">
                    		<ul id="ul01">
                    			<li style="color: #F85659;">基本信息</li>
                    			<li class="li02"><a href="">认证管理</a></li>
                    			<li class="li02"><a href="">企业信息管理</a></li>
                    			<li class="li02"><a href="">子账号管理</a></li>
                    			<li class="li02"><a href="">权限管理</a></li>
                    			<li class="li02"><a href="">资源管理</a></li>
                    			<li class="li02"><a href="">合同管理</a></li>
                    		</ul>
                    		
                    	</div>
                    	
                    </div>
                     <div class="brb-right">
                     	 <div class="brbr-top">
                         	<span><b>账号信息</b></span>
                         	
                         </div>
                     	<div class="brbm-content_">
                     		<div class="brbm-content_t">
                     		    <button onclick="update()">修改密码</button>
                     		</div>
                     		<div class="brbm-content_b">
                     			<ul>
                     				<li><img src="image/人头.png">&nbsp;&nbsp;&nbsp;${admin.userName }</li>
                     				<li><img src="image/手机.png"><span>${admin.tel}</span><a href="">修改</a></li>
                     				<li><img src="image/邮箱.png"><span>邮箱未绑定</span><a href="">绑定</a></li>
                     			</ul>
                     		</div>
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
		 <script>
     	function update(){
     		window.open('admin/adminUpdate.jsp','','width=500px,height=300px,left=400px,top=150px');
     	}
     </script>
</html>