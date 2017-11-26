<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head lang="en">
<meta charset="UTF-8">
<title>登录</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="stylesheet" href="AmazeUI-2.4.2/assets/css/amazeui.css" />
<link href="css/dlstyle.css" rel="stylesheet" type="text/css">
</head>

<body style="font-size: 20px;">
       
        <div class="login-boxtitle">
		<a href="home3.jsp"><img alt="logo" src="images/logobig.png" /></a>
	</div>

	<div class="login-banner">
		<div class="login-main">
			<div class="login-banner-bg">
				<span></span><img src="images/big.jpg" />
			</div>
			<div class="login-box">
				<br />
				<h3 class="title">登录商城</h3>

				<div class="clear"></div>
				<br />
				<div class="login-form">
					<form action="login" method="post">
						<div class="user-name">
							<label for="user"><i class="am-icon-user"></i></label> <input
								type="text" name="uname" id="user" placeholder="用户名">
						</div>
						<div class="user-pass">
							<label for="password"><i class="am-icon-lock"></i></label> 
							<input type="password" name="pwd" id="password" placeholder="请输入密码">
							<%
							 String msg1=(String)request.getAttribute("login_failed");
							%>
						   <span style="font-size:15px;color:red;">
        	                 <%= (msg1==null? "":msg1) %>
        	                 </span>
						</div>
						<div class="am-cf">
					<input type="submit" name="" value="登 录"
						class="am-btn am-btn-primary am-btn-sm">
				</div>
					</form>
				</div>

				<div class="login-links">

					<a href="register.jsp" class="zcnext am-fr am-btn-default"
						style="font-size: 20px;">注册</a> <br />
				</div>

				
				<div class="partner"></div>

			</div>
		</div>
	</div>
  

	


	<%@ include file="footer.jsp"%>
</body>

</html>