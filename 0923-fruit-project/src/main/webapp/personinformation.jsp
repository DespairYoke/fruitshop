<%@page import="entity.Shopper"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

<title>个人资料</title>

<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet"
	type="text/css">
<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet"
	type="text/css">

<link href="css/personal.css" rel="stylesheet" type="text/css">
<link href="css/infstyle.css" rel="stylesheet" type="text/css">
<script src="AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
<script src="AmazeUI-2.4.2/assets/js/amazeui.js"></script>
</head>

<body>
	<!--头 -->
	<%@ include file="header.jsp"%>

	<div class="center">
		<div class="col-main">
			<div class="main-wrap">

				<div class="user-info">
					<!--标题 -->
					<div class="am-cf am-padding">
						<div class="am-fl am-cf">
							<strong class="am-text-danger am-text-lg">个人资料</strong> / <small>Personal&nbsp;information</small>
						</div>
					</div>
					<hr />

					<!--头像 -->
					<div class="user-infoPic">

						<div class="filePic">
							<input type="file" class="inputPic"
								allowexts="gif,jpeg,jpg,png,bmp" accept="image/*"> <img
								class="am-circle am-img-thumbnail" src="images/getAvatar.do.jpg"
								alt="" />
						</div>

						<p class="am-form-help">头像</p>

						<div class="info-m">
							<div>
								<%
									/* String uname = (String) session.getAttribute("uname");
									String pwd = (String) session.getAttribute("pwd"); */
									Shopper shopper=(Shopper)session.getAttribute("shopper");
								%>
								<b>用户名：<i style="font-size:20px;"><b><%=shopper.getUname()%></b></i></b>
							</div>
							<div class="vip">
								<span></span><a href="#">会员专享</a>
							</div>
						</div>
					</div>

					<!--个人信息 -->
					<div class="info-main">
						<form class="am-form am-form-horizontal" action="update"
							method="post">

							<div class="am-form-group">
								<label class="am-form-label">性别</label>
								<div class="am-form-content sex">
									<label class="am-radio-inline"> <input type="radio"
										name="gender" value="男" checked> 男
									</label> <label class="am-radio-inline"> <input type="radio"
										name="gender" value="女" data-am-ucheck> 女
									</label>

								</div>
							</div>

							<div class="am-form-group">
								<label for="user-phone" class="am-form-label">手机号码</label>
								<div class="am-form-content"> <!-- placeholder="手机号必填" -->
									<input id="user-phone" value="<%=shopper.getPhone() %>" type="tel"
										name="phone">

								</div>
							</div>
							<div class="am-form-group">
								<label for="user-phone" class="am-form-label">银行卡号</label>
								<div class="am-form-content">
									<input id="user-phone" value="<%=shopper.getCardnum() %>" type="text"
										name="cardnum">
								</div>
							</div>

							<div class="am-form-group">
								<label for="user-intro" class="am-form-label">详细地址</label>
								<div class="am-form-content">
									<input  type="text"id="user"
										value="<%=shopper.getAddress() %>" name="address"></textarea>

								</div>
							</div>



							<div class="am-form-group safety">
								<label for="user-safety" class="am-form-label">账号安全</label>
								<div class="am-form-content safety">
									<a href="safety.html"> <span class="am-icon-angle-right"></span>

									</a>

								</div>
							</div>
							<div class="info-btn">
								<input type="submit" value="保存" class="am-btn am-btn-danger" />
								<!-- <div class="am-btn am-btn-danger">
								
								</div> -->
							</div>

						</form>
					</div>

				</div>

			</div>
			<!--底部-->
			<%@ include file="footer.jsp"%>
		</div>

		<%@ include file="menu.jsp"%>
	</div>

</body>

</html>