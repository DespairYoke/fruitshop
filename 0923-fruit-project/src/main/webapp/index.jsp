<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

<title>个人中心</title>

<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet"
	type="text/css">
<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet"
	type="text/css">
<link href="css/personal.css" rel="stylesheet" type="text/css">
<link href="css/vipstyle.css" rel="stylesheet" type="text/css">
<script src="AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
<script src="AmazeUI-2.4.2/assets/js/amazeui.js"></script>
</head>

<body>
	<!--头 -->
	<%@ include  file="header.jsp"%>
	
	<div class="center">
		<div class="col-main">
			<div class="main-wrap">
				<div class="wrap-left">
					<div class="wrap-list">
						<div class="m-user">
							<!--个人信息 -->

							<div class="m-userinfo">
								<a href="news.jsp">
									<div class="tipsBox">
										<i class="am-icon-envelope"></i>
									</div>
								</a>
								<div class="m-baseinfo">
									<a class="m-pic" href="information.jsp"> <img
										src="images/getAvatar.do.jpg">
									</a>
									<div class="m-info">
										<em class="s-name">小叮当</em>
										
										<div class="safeText">
											<a href="safety.jsp">账户安全:<em style="margin-left: 20px;">60</em>分
											</a>
											<div class="progressBar">
												<span style="left: -95px;" class="progress"></span>
											</div>
										</div>
										<div class="m-address">
											<a href="address.jsp" class="i-trigger">收货地址<i
												class="am-icon-angle-right" style="padding-left: 5px;"></i></a>
										</div>
									</div>
								</div>
								<div class="m-right">
									<div class="m-new">
										<a href="news.jsp"><i class="am-icon-dropbox  am-icon-md"
											style="padding-right: 5px;"></i>消息盒子</a>
									</div>

								</div>
							</div>
							
						</div>
						<div class="box-container-bottom"></div>

						<!--订单 -->
						<div class="m-order">
							<div class="s-bar">
								<i class="s-icon"></i>我的订单 <a class="i-load-more-item-shadow"
									href="order.jsp">全部订单</a>
							</div>
							<ul>
								<li><a href="order.jsp"><i><img
											src="images/pay.png" /></i><span>待付款</span></a></li>
								<li><a href="order.jsp"><i><img
											src="images/send.png" /></i><span>待发货<em class="m-num">1</em></span></a></li>
								<li><a href="order.jsp"><i><img
											src="images/receive.png" /></i><span>待收货</span></a></li>
								<li><a href="order.jsp"><i><img
											src="images/comment.png" /></i><span>待评价<em
											class="m-num">3</em></span></a></li>
								<li><a href="change.jsp"><i><img
											src="images/refund.png" /></i><span>退换货</span></a></li>
							</ul>
							<div class="orderContentBox">
								<div class="orderContent">
									<div class="orderContentpic">
										<div class="imgBox">
											<a href="orderinfo.jsp"><img src="images/youzi.jpg"></a>
										</div>
									</div>
									<div class="detailContent">
										<a href="orderinfo.jsp" class="delivery">签收</a>
										<div class="orderID">
											<span class="time">2016-03-09</span> <span
												class="splitBorder">|</span> <span class="time">21:52:47</span>
										</div>
										<div class="orderID">
											<span class="num">共1件商品</span>
										</div>
									</div>
									<div class="state">待评价</div>
									<div class="price">
										<span class="sym">¥</span>23.<span class="sym">80</span>
									</div>

								</div>
								<a href="javascript:void(0);" class="btnPay">再次购买</a>
							</div>

							<div class="orderContentBox">
								<div class="orderContent">
									<div class="orderContentpic">
										<div class="imgBox">
											<a href="orderinfo.jsp"><img src="images/heart.jpg"></a>
										</div>
									</div>
									<div class="detailContent">
										<a href="orderinfo.jsp" class="delivery">派件</a>
										<div class="orderID">
											<span class="time">2016-03-09</span> <span
												class="splitBorder">|</span> <span class="time">21:52:47</span>
										</div>
										<div class="orderID">
											<span class="num">共2件商品</span>
										</div>
									</div>
									<div class="state">已发货</div>
									<div class="price">
										<span class="sym">¥</span>246.<span class="sym">50</span>
									</div>

								</div>
								<a href="javascript:void(0);" class="btnPay">再次购买</a>
							</div>
						</div>
						<!--九宫格-->
						<div class="user-squaredIcon">
							<div class="s-bar">
								<i class="s-icon"></i>我的常用
							</div>
							<ul>
								<a href="order.jsp">
									<li class="am-u-sm-4"><i class="am-icon-truck am-icon-md"></i>
										<p>物流查询</p></li>
								</a>

								
								
								<a href="home3.jsp">
									<li class="am-u-sm-4"><i
										class="am-icon-clock-o am-icon-md"></i>
										<p>限时活动</p></li>
								</a>

							</ul>
						</div>

						<div class="user-suggestion">
							<div class="s-bar">
								<i class="s-icon"></i>会员中心
							</div>
							<div class="s-bar">
								<a href="suggest.jsp"><i class="s-icon"></i>意见反馈</a>
							</div>
						</div>

 
					</div>
				</div>
				<div class="wrap-right">

					<!-- 日历-->
					<div class="day-list">
						<div class="s-title">每日新鲜事</div>
						<div class="s-box">
							<ul>
								<li><a><p>听到这几种水果，越吃越年轻</p></a></li>
								<li><a><p>美味这么重要的事怎能随意</p></a></li>
								<li><a><p>春日护肤不可少，水果你选对了吗？</p></a></li>
								<li><a><p>纯粹时尚，摩登出游，吸睛美食</p></a></li>
								<li><a><p>听到这几种水果，越吃越年轻</p></a></li>
							</ul>
						</div>
					</div>
					<!--新品 -->
					<div class="new-goods">
						<div class="s-bar">
							<i class="s-icon"></i>今日新品 <a class="i-load-more-item-shadow">15款新品</a>
						</div>
						<div class="new-goods-info">
							<a class="shop-info" href="#">
								<div class="face-img-panel">
									<img src="images/imgsearch1.jpg" alt="">
								</div> <span class="new-goods-num ">4</span> <span class="shop-title">剥壳松子</span>
							</a> <a class="follow">收藏</a>
						</div>
					</div>

					<!--热卖推荐 -->
					<div class="new-goods">
						<div class="s-bar">
							<i class="s-icon"></i>热卖推荐
						</div>
						<div class="new-goods-info">
							<a class="shop-info" href="#" target="_blank">
								<div>
									<img src="images/666.jpg" alt="">
								</div> <span class="one-hot-goods">￥189.60</span>
							</a>
						</div>
					</div>
				</div>
				<div class="clear"></div>

				<!--收藏和足迹-->
				


			</div>
			<!--底部-->
			<%@ include  file="footer.jsp"%>
			</div>
		  <%@ include  file="menu.jsp"%>
	</div>
	<!--引导 -->
	<div class="navCir">
		<li><a href="home3.jsp"><i class="am-icon-home "></i>首页</a></li>
		<li><a href="sort.jsp"><i class="am-icon-list"></i>分类</a></li>
		<li><a href="shopcart.jsp"><i
				class="am-icon-shopping-basket"></i>购物车</a></li>
		<li class="active"><a href="index.jsp"><i
				class="am-icon-user"></i>我的</a></li>
	</div>
</body>

</html>