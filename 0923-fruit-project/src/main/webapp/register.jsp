
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>

<head lang="en">
<meta charset="UTF-8">
<title>注册</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="stylesheet" href="AmazeUI-2.4.2/assets/css/amazeui.min.css" />
<link href="css/dlstyle.css" rel="stylesheet" type="text/css">
<script src="AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
<script src="AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

</head>

<body>

	<div class="login-boxtitle">
		<a href="demo.html"><img alt="" src="images/logobig.png" /></a>
	</div>

	<div class="res-banner">
		<div class="res-main">
			<div class="login-banner-bg">
				<span></span><img src="images/big.jpg" />
			</div>
			<div class="login-box">

				<div class="am-tabs" id="doc-my-tabs">
					<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify" align="center">
						<li class="am-active"  style="font-size:24px;" >
						<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;
						欢迎注册</b></li>

					</ul>

					<div class="am-tabs-bd">
						<div class="am-tab-panel am-active">
							<form action="regist" method="post">

								<div class="user-email">
									<label for="user"><i class="am-icon-envelope-o"></i></label>
									 <input type="text" name="uname"  placeholder="请输入用户名">
									<%
										String msg = (String) request.getAttribute("regist_failed");
									%>
									<span style="font-size: 10px; color: red;"> <%=(msg == null ? "" : msg)%>
									</span>
								</div>
								<div class="user-pass">
									<label for="password"><i class="am-icon-lock"></i></label> <input
										type="password" name="pwd" id="password" placeholder="设置密码">
								</div>
								

								<div class="am-cf">
									<input type="submit" value="注册"
										class="am-btn am-btn-primary am-btn-sm am-fl">
								</div>
							</form>
							<!-- <div class="login-links">
								<label for="reader-me"> <input id="reader-me"
									type="checkbox"> 点击表示您同意商城《服务协议》
								</label>
							</div> -->


						</div>

						

						<script>
							$(function() {
								$('#doc-my-tabs').tabs();
							})
						</script>

					</div>
				</div>

			</div>
		</div>
		<%@ include file="footer.jsp"%>
</body>

</html>