<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>我的银行卡</title>

		<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="css/personal.css" rel="stylesheet" type="text/css">


	</head>

	<body>
		<!--头 -->
		<%@ include  file="header.jsp"%>
		
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">
					<!--标题 -->
					<div class="am-cf am-padding">
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我的银行卡</strong> / <small>My&nbsp;Credit&nbsp;Card</small></div>
					</div>
					<hr/>
					<div class="card-box-list">
						<ul>
							<li>
								<div class="card-box">
									<div class="card-box-name">
										<span class="bank-logo"><a href="#"><img src="images/bankjh.png"></a></span>
										<span title="中国建设银行" class="bank-name">中国建设银行</span>
										<span class="bank-num4">尾号9098</span>
										<span class="card-type card-type-CC"></span>
									</div>
									<div class="card-box-express">
										<div class="express-status">
											<span class="asset-icon asset-icon-express-s"></span> <span>已开通</span>
										</div>
										<div class="express-else"><a href="#">管理</a></div>
									</div>
									
								</div>
							</li>
							
							<li>
								<div class="add-card">
									<a href="cardmethod.html" target="_blank"><i class="am-icon-plus"></i>添加银行卡</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<!--底部-->
				<%@ include  file="footer.jsp"%>
			</div>
                <%@ include  file="menu.jsp"%>
		</div>

	</body>

</html>