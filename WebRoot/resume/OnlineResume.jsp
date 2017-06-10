<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>简历管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" href="style/css/style.css" rel="stylesheet">
<link href="style/css/online.css" type="text/css" rel="stylesheet">
<link href="style/css/popup.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>
<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
</head>
<style>
   .head{margin-top:-25px;}
   .head ul li{line-height:30px;}
   #body{background:#F8F8F8;}
</style>
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

				<li><a href="index_forward.jsp">首页</a></li>
				<li><a href="getJobs.do?pageindex=1&pagenum=5">职位</a></li>
				<li><a href="#">公司</a></li>
				<li><a href="YiPai.jsp">一拍</a></li>

			</ul>
			<c:if test="${user.userName==null}">
				<ul class="ul3">

					<li><img src="image/人头.png"> <a
						href="login.jsp?jobid=${job.id}">求职者登录</a></li>
					<li><img src="image/企业.png"> <a
						href="admin/adminLogin.jsp">去企业版</a></li>
					<li><img src="image/手机.png"> <a href="app.jsp">APP</a></li>
				</ul>
			</c:if>
			<c:if test="${user.userName!=null}">
				<ul class="ul3">

					<li><a href="login.jsp">消息</a></li>
					<li>|</li>
					<li><a href="resume/OnlineResume.jsp">我的简历</a></li>
					<li>|</li>
					<li><a href="app.jsp">投递箱</a></li>
					<li>|</li>
					<li>
					  <a href="userLoginOut.do">退出登录</a>
					</li>
				</ul>
			</c:if>
		</div>
	</div>
	<script>
		$('.combo.dropdown').dropdown({
			action : 'combo'
		});
	</script>
	<div id="body">

		<div id="container">

			<div class="clearfix">
				<div class="content_l">
					<div class="profile_box" id="basicInfo">
						<h2>基本信息</h2>
						<span class="c_edit" ></span>
						<div class="basicShow">
							<p>姓名：${u.userName}</p>
							<p>手机号：${u.tel}</p>
							<p>邮箱：${u.email}</p>

						</div>
						<!--end .basicShow-->

						<div class="basicEdit dn" >
							<form id="profileForm" action="insertOnlineResume.do"
								method="post">
								<input type="text" name="id" style="display:none;"
									value="${u.id}">
								<table>
									<tbody>
										<tr>
											<td valign="top"><span class="redstar">*</span></td>
											<td><input type="text" placeholder="姓名" value="jason"
												name="userName" id="name"></td>
											<td valign="top"></td>
											<td>
												<ul class="profile_radio clearfix reset">
													<li class="current">男<em></em> <input type="radio"
														 name="gender" value="男">
													</li>
													<li>女<em></em> <input type="radio" name="gender"
														value="女">
													</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td valign="top"><span class="redstar">*</span></td>
											<td><input type="hidden" id="topDegree" value="大专"
												name="topDegree"> <input type="text" value="大专"
												id="select_topDegree" name="education" placeholder="学历"
												value="${u.education}"
												class="profile_select_190 profile_select_normal">
												<div class="boxUpDown boxUpDown_190 dn" id="box_topDegree"
													style="display: none;">
													<ul>
														<li>大专</li>
														<li>本科</li>
														<li>硕士</li>
														<li>博士</li>
														<li>其他</li>
													</ul>
												</div></td>
											<td valign="top"><span class="redstar">*</span></td>
											<td><input type="hidden" id="workyear" value=""
												name="workyear"> <input type="text"
												value="${u.workyear}" placeholder="工作经验"
												id="select_workyear" name="workYear"
												class="profile_select_190 profile_select_normal">
												<div class="boxUpDown boxUpDown_190 dn" id="box_workyear"
													style="display: none;">
													<ul>
														<li>应届毕业生</li>
														<li>1年</li>
														<li>2年</li>
														<li>3年</li>
														<li>4年</li>
														<li>5年</li>
														<li>6年</li>
														<li>7年</li>
														<li>8年</li>
														<li>9年</li>
														<li>10年</li>
														<li>10年以上</li>
													</ul>
												</div></td>
										</tr>
										<tr>
											<td valign="top"><span class="redstar">*</span></td>
											<td colspan="3"><input type="text" placeholder="手机号码"
												value="18644444444" name="tel" id="tel"></td>
										</tr>
										<tr>
											<td valign="top"><span class="redstar">*</span></td>
											<td colspan="3"><input type="text"
												placeholder="接收面试通知的邮箱" value="jason@qq.com" name="email"
												id="email"></td>
										</tr>
										<tr>
											<td valign="top"><span class="redstar">*</span></td>
											<td colspan="3"><input type="text"
												placeholder="毕业学校" value="${u.educateSchool}" name="educateSchool"
												></td>
										</tr>
										<tr>
											<td valign="top"></td>
											<td colspan="3"><input type="hidden" id="currentState"
												value="" name="currentState"> <input type="text"
												value="${u.state}" id="select_currentState" name="state"
												placeholder="目前状态"
												class="profile_select_410 profile_select_normal">
												<div class="boxUpDown boxUpDown_410 dn"
													id="box_currentState" style="display: none;">
													<ul>
														<li>我目前已离职，可快速到岗</li>
														<li>我目前正在职，正考虑换个新环境</li>
														<li>我暂时不想找工作</li>
														<li>我是应届毕业生</li>
													</ul>
												</div></td>
										</tr>
										<tr>
											<td></td>
										</tr>
									</tbody>
								</table>
								<h2>期望工作</h2>
								<table>
									<tbody>
										<tr>
											<td><input type="hidden" id="expectCity" value=""
												name="expectCity"> <input type="text" name="city"
												value="${u.city}" placeholder="期望城市" id="select_expectCity"
												class="profile_select_287 profile_select_normal">
												<div class="boxUpDown boxUpDown_596 dn" id="box_expectCity"
													style="display: none;">
													<dl>
														<dt>热门城市</dt>
														<dd>
															<span>北京</span> <span>上海</span> <span>广州</span> <span>深圳</span>
															<span>成都</span> <span>杭州</span>
														</dd>
													</dl>
													<dl>
														<dt>ABCDEF</dt>
														<dd>
															<span>北京</span> <span>长春</span> <span>成都</span> <span>重庆</span>
															<span>长沙</span> <span>常州</span> <span>东莞</span> <span>大连</span>
															<span>佛山</span> <span>福州</span>
														</dd>
													</dl>
													<dl>
														<dt>GHIJ</dt>
														<dd>
															<span>贵阳</span> <span>广州</span> <span>哈尔滨</span> <span>合肥</span>
															<span>海口</span> <span>杭州</span> <span>惠州</span> <span>金华</span>
															<span>济南</span> <span>嘉兴</span>
														</dd>
													</dl>
													<dl>
														<dt>KLMN</dt>
														<dd>
															<span>昆明</span> <span>廊坊</span> <span>宁波</span> <span>南昌</span>
															<span>南京</span> <span>南宁</span> <span>南通</span>
														</dd>
													</dl>
													<dl>
														<dt>OPQR</dt>
														<dd>
															<span>青岛</span> <span>泉州</span>
														</dd>
													</dl>
													<dl>
														<dt>STUV</dt>
														<dd>
															<span>上海</span> <span>石家庄</span> <span>绍兴</span> <span>沈阳</span>
															<span>深圳</span> <span>苏州</span> <span>天津</span> <span>太原</span>
															<span>台州</span>
														</dd>
													</dl>
													<dl>
														<dt>WXYZ</dt>
														<dd>
															<span>武汉</span> <span>无锡</span> <span>温州</span> <span>西安</span>
															<span>厦门</span> <span>烟台</span> <span>珠海</span> <span>中山</span>
															<span>郑州</span>
														</dd>
													</dl>
												</div></td>
											<td>
												<ul class="profile_radio clearfix reset">
													<c:choose>  
  													   <c:when test="${u.type=='全职'}">   
													   <li class="current">全职<em></em> <input type="radio"
														name="type"
														value="全职">
													 </li> 
													   </c:when>  
													     <c:otherwise> 
													      <li>全职<em></em> <input type="radio"
														name="type"
														value="全职">
													</li>  
													   </c:otherwise>  
													</c:choose>  
													
										           <c:choose>  
  													   <c:when test="${u.type=='兼职'}">   
													   <li class="current">兼职<em></em> <input type="radio"
														name="type"
														value="兼职">
													 </li> 
													   </c:when>  
													     <c:otherwise> 
													      <li>兼职<em></em> <input type="radio"
														name="type"
														value="兼职">
													</li>  
													   </c:otherwise>  
													</c:choose> 
													 <c:choose>  
  													   <c:when test="${u.type=='实习'}">   
													   <li class="current" style="margin-left:140px;margin-top:-45px;">实习<em></em> <input type="radio" name="type"
														value="实习">
												    	</li>
													 </c:when>  
													     <c:otherwise> 
													      <li style="margin-left:140px;margin-top:-45px;">实习<em></em> <input type="radio" name="type"
														value="实习">
												    	</li>
													   </c:otherwise>  
													</c:choose> 
													
												</ul>
											</td>
										</tr>
										<tr>
											<td><input type="text" placeholder="期望职位，如：产品经理"
												value="${u.expectPosition}" name="expectPosition"
												id="expectPosition" style="width:250px;"></td>
											<td><input type="hidden" id="expectSalary" value=""
												name="expectSalary"> <input type="text"
												value="${u.salary}" id="select_expectSalary"
												placeholder="期望薪水" name="salary"
												class="profile_select_287 profile_select_normal">
												<div class="boxUpDown boxUpDown_287 dn"
													id="box_expectSalary" style="display: none;">
													<ul>
														<li>2k以下</li>
														<li>2k-5k</li>
														<li>5k-10k</li>
														<li>10k-15k</li>
														<li>15k-25k</li>
														<li>25k-50k</li>
														<li>50k以上</li>
													</ul>
												</div></td>
										</tr>
										<tr>
											<td colspan="2"><input type="submit" value="保 存"
												class="btn_profile_save"> <a
												class="btn_profile_cancel" href="javascript:;">取 消</a></td>
										</tr>
									</tbody>
								</table>
							</form>
							<!--end #profileForm-->

						</div>
						<!--end .basicEdit-->

						<input type="hidden" id="nameVal" value="${u.userName}"> <input
							type="hidden" id="emailVal" value="${u.email}"> <input
							type="hidden" id="telVal" value="${u.tel}"> <input
							type="hidden" id="genderVal" value="${u.gender}"> <input
							type="hidden" id="topDegreeVal" value="${u.education}"> <input
							type="hidden" id="workyearVal" value="${u.workyear}"> <input
							type="hidden" id="currentStateVal" value="${u.state}"> <input
							type="hidden" id="telVal" value="${u.tel}">
					</div>
				</div>
                     </div>
     			 </div>
     			  </div>
					<script src="style/js/profile.min.js" type="text/javascript"></script>
</body>
</html>
