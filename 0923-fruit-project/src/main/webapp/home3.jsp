<%@page import="entity.Shopper"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>首页</title>

		<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />

		<link href="basic/css/demo.css" rel="stylesheet" type="text/css" />

		<link href="css/hmstyle.css" rel="stylesheet" type="text/css" />
		<script src="AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

	</head>

	<body>
		<div class="hmtop">
			<!--顶部导航条 -->
			<div class="am-container header">
				
				<ul class="message-r">
					<div class="topMessage home">
						<div class="menu-hd"><a href="home3.jsp" target="_top" class="h">商城首页</a></div>
					</div>
					<div class="topMessage my-shangcheng">
						<div class="menu-hd MyShangcheng">
						<%
						  Shopper shopper=(Shopper)session.getAttribute("shopper");
						%>
						<a href="index.jsp?uname=<%=shopper.getUname() %>&pwd=<%=shopper.getPwd() %>>" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
					</div>
					<div class="topMessage mini-cart">
						<div class="menu-hd"><a id="mc-menu-hd" href="shopcart.jsp" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
					</div>
					
				</ul>
				</div>

				<!--悬浮搜索框-->

				<div class="nav white">
					<div class="logo"><img src="images/logo.png" /></div>
					<div class="logoBig">
						<li><img src="images/logobig.png" /></li>
					</div>

					<div class="search-bar pr">
						<a name="index_none_header_sysc" href="#"></a>
						<form action="search" method="post">
							<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
							<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
						</form>
					</div>
				</div>

				<div class="clear"></div>
			</div>
			
			
			<div class="banner">
                      <!--轮播 -->
						<div class="am-slider am-slider-default scoll" data-am-flexslider id="demo-slider-0">
							<ul class="am-slides">
								<li class="banner1"><a href="introduction.html"><img src="images/aa0.jpg" /></a></li>
								<li class="banner2"><img src="images/aaa2.jpg" /></li>
								<li class="banner3"><img src="images/ad3.jpg" /></li>
								<li class="banner4"><img src="images/aa4.jpg" /></li>

							</ul>
						</div>
						<div class="clear"></div>	
			</div>						
			
			<div class="shopNav">
				<div class="slideall">
			        
					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont">
							<ul>
								<li class="index"><a href="home3.jsp">首页</a></li>
                                <li class="qc"><a href="#">闪购</a></li>
                                <li class="qc"><a href="#">限时抢</a></li>
                                <li class="qc"><a href="#">团购</a></li>
                                <li class="qc last"><a href="#">大包装</a></li>
							</ul>
						    <div class="nav-extra">
						    	<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
						    	<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
						    </div>
						</div>
		        				
						<!--侧边导航 -->
						<div id="nav" class="navfull">
							<div class="area clearfix">
								<div class="category-content" id="guide_2">
									
									<div class="category">
										<ul class="category-list" id="js_climit_li">
											<li class="appliance js_toggle relative first">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/candy.png"></i><a class="ml-22" title="点心">酸甜性</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="酸性">酸性</span></dt>
																		<dd><a title="草莓" href="search.jsp"><span>草莓</span></a></dd>
																		<dd><a title="葡萄柚" href="search.jsp"><span>葡萄柚</span></a></dd>
																		<dd><a title="凤梨" href="search.jsp"><span>凤梨</span></a></dd>
																		<dd><a title="酸李子" href="#"><span>酸李子</span></a></dd>
																		<dd><a title="橘子" href="#"><span>橘子</span></a></dd>
																		<dd><a title="奇异果" href="#"><span>奇异果</span></a></dd>
																		<dd><a title="柠檬" href="#"><span>柠檬</span></a></dd>
																		<dd><a title="酸苹果" href="#"><span>酸苹果</span></a></dd>
																		
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="亚酸性">亚酸性</span></dt>
																		<dd><a title="芒果" href="search?index_none_header_sysc=芒果"><span>芒果</span></a></dd>
																		<dd><a title="木瓜" href="search.jsp"><span>木瓜</span></a></dd>
																		<dd><a title="樱桃" href="search.jsp"><span>樱桃</span></a></dd>
																		<dd><a title="苹果" href="#"><span>苹果</span></a></dd>
																		<dd><a title="杏子" href="#"><span>杏子</span></a></dd>
																		<dd><a title="桃子" href="#"><span>桃子</span></a></dd>
																		
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="甜性">甜性</span></dt>
																		<dd><a title="无花果" href="search.jsp"><span>无花果</span></a></dd>
																		<dd><a title="甜葡萄" href="search.jsp"><span>甜葡萄</span></a></dd>
																		<dd><a title="香蕉" href="#"><span>香蕉</span></a></dd>
																		
																		<dd><a title="干果" href="#"><span>干果</span></a></dd>
																		
																		<dd><a title="柿子" href="#"><span>柿子</span></a></dd>
																	</dl>

																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="呵官方旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >呵官方旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="格瑞旗舰店" target="_blank" href="#" rel="nofollow"><span >格瑞旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="飞彦大厂直供" target="_blank" href="#" rel="nofollow"><span  class="red" >飞彦大厂直供</span></a></dd>
																		<dd><a rel="nofollow" title="红e·Fruit" target="_blank" href="#" rel="nofollow"><span >红e·Fruit</span></a></dd>
																		<dd><a rel="nofollow" title="本真旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >本真旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="杭派水果批发网" target="_blank" href="#" rel="nofollow"><span  class="red" >杭派水果批发网</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
											<b class="arrow"></b>	
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/cookies.png"></i><a class="ml-22" title="凉、热性">凉、热性</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="凉性">寒凉类</span></dt>
																		<dd><a title="雪梨" href="search.jsp"><span>雪梨</span></a></dd>
																		<dd><a title="西瓜" href="search.jsp"><span>西瓜</span></a></dd>
																		<dd><a title="柑" href="#"><span>柑</span></a></dd>
																		<dd><a title="橘" href="#"><span>橘</span></a></dd>
																		<dd><a title="香蕉" href="#"><span>香蕉</span></a></dd>
																		<dd><a title="柿子" href="#"><span>柿子</span></a></dd>
																		
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="温热类">温热类</span></dt>
																		<dd><a title="荔枝" href="search.jsp"><span>荔枝</span></a></dd>
																		<dd><a title="樱桃" href="search.jsp"><span>樱桃</span></a></dd>
																		<dd><a title="枣子" href="#"><span>枣子</span></a></dd>
																		<dd><a title="桃子" href="#"><span>桃子</span></a></dd>
																		<dd><a title="龙眼" href="#"><span>龙眼</span></a></dd>
																		<dd><a title="石榴" href="#"><span>石榴</span></a></dd>
																		<dd><a title="菠萝" href="#"><span>菠萝</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="甘平类">甘平类</span></dt>
																		<dd><a title="椰子" href="search.jsp"><span>椰子</span></a></dd>
																		<dd><a title="枇杷" href="search.jsp"><span>枇杷</span></a></dd>
																		<dd><a title="李子" href="#"><span>李子</span></a></dd>
																		<dd><a title="山楂" href="#"><span>山楂</span></a></dd>
																		<dd><a title="苹果" href="#"><span>苹果</span></a></dd>
																		<dd><a title="梅子" href="#"><span>梅子</span></a></dd>
																	</dl>
																</div>
															
															</div>
														</div>
													</div>
												</div>
                                             <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/meat.png"></i><a class="ml-22" title="园艺分类">园艺分类</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="瓜类">瓜类</span></dt>
																		<dd><a title="西瓜" href="search.jsp"><span>西瓜</span></a></dd>
																		<dd><a title="哈密瓜" href="search.jsp"><span>哈密瓜</span></a></dd>
																		<dd><a title="香瓜" href="#"><span>香瓜</span></a></dd>
																		<dd><a title="白兰瓜" href="#"><span>白兰瓜</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="柑橘类">柑橘类</span></dt>
																		<dd><a title="橙子" href="search.jsp"><span>甜橙</span></a></dd>
																		<dd><a title="桔" href="#"><span>桔子</span></a></dd>
																		<dd><a title="柚子" href="#"><span>柚子</span></a></dd>
																		<dd><a title="柠檬" href="#"><span>柠檬</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="浆果类">浆果类</span></dt>
																		<dd><a title="猕猴桃" href="search.jsp"><span>猕猴桃</span></a></dd>
																		<dd><a title="葡萄" href="#"><span>葡萄</span></a></dd>
																		<dd><a title="草莓" href="#"><span>草莓</span></a></dd>
																		<dd><a title="桑葚" href="#"><span>桑葚</span></a></dd>
																		<dd><a title="无花果" href="#"><span>无花果</span></a></dd>
																		<dd><a title="杨桃" href="#"><span>杨桃</span></a></dd>
																		<dd><a title="龙眼" href="#"><span>龙眼</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="仁果类">仁果类</span></dt>
																		<dd><a title="梨子" href="search.jsp"><span>梨子</span></a></dd>
																		<dd><a title="山楂" href="#"><span>山楂</span></a></dd>
																		<dd><a title="枇杷" href="#"><span>枇杷</span></a></dd>
																		<dd><a title="苹果" href="#"><span>苹果</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="核果类">核果类</span></dt>
																		<dd><a title="樱桃" href="search.jsp"><span>樱桃</span></a></dd>
																		<dd><a title="桃子" href="search.jsp"><span>桃子</span></a></dd>
																		<dd><a title="杏子" href="#"><span>杏子</span></a></dd>
																		<dd><a title="李子" href="#"><span>李子</span></a></dd>
																		<dd><a title="枣子" href="#"><span>枣子</span></a></dd>
																		<dd><a title="橄榄" href="#"><span>橄榄</span></a></dd>
																		<dd><a title="梅子" href="#"><span>梅子</span></a></dd>
																	</dl>
																</div>
																
															</div>
														</div>
													</div>
												</div>
                                            <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/bamboo.png"></i><a class="ml-22" title="树栽分类">树栽分类</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="落叶果树">落叶果树</span></dt>
																		<dd><a title="樱桃" href="search.jsp"><span>樱桃</span></a></dd>
																		<dd><a title="苹果" href="#"><span>苹果</span></a></dd>
																		<dd><a title="梨子" href="#"><span>梨子</span></a></dd>
																		<dd><a title="枣子" href="#"><span>枣子</span></a></dd>
																		<dd><a title="山楂" href="#"><span>山楂</span></a></dd>
																		<dd><a title="草莓" href="#"><span>草莓</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="常绿果树">常绿果树</span></dt>
																		<dd><a title="橘子" href="search.jsp"><span>橘子</span></a></dd>
																		<dd><a title="芒果" href="search.jsp"><span>芒果</span></a></dd>
																		<dd><a title="杨桃" href="#"><span>杨桃</span></a></dd>
																		<dd><a title="椰子" href="#"><span>椰子</span></a></dd>
																		<dd><a title="菠萝" href="#"><span>菠萝</span></a></dd>
																		<dd><a title="荔枝" href="#"><span>荔枝</span></a></dd>
																		<dd><a title="香蕉" href="#"><span>香蕉</span></a></dd>
																	</dl>
																	
																</div>
																<div class="brand-side">
																	<dl class="dl-sort"><dt><span>实力商家</span></dt>
																		<dd><a rel="nofollow" title="歌芙品牌旗舰店" target="_blank" href="#" rel="nofollow"><span  class="red" >歌芙品牌旗舰店</span></a></dd>
																		<dd><a rel="nofollow" title="爱丝蓝水果基地" target="_blank" href="#" rel="nofollow"><span >爱丝蓝内衣厂</span></a></dd>
																		<dd><a rel="nofollow" title="香港优蓓尔防辐射" target="_blank" href="#" rel="nofollow"><span >香港优蓓尔防辐射</span></a></dd>
																		<dd><a rel="nofollow" title="蓉莉娜水果批发" target="_blank" href="#" rel="nofollow"><span >蓉莉娜内衣批发</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                             <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/nut.png"></i><a class="ml-22" title="作用划分">作用划分</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="降血压">降血压</span></dt>
																		<dd><a title="山楂" href="#"><span>山楂</span></a></dd>
																		<dd><a title="西瓜" href="#"><span>西瓜</span></a></dd>
																		<dd><a title="梨子" href="#"><span>梨子</span></a></dd>
																		<dd><a title="菠萝" href="#"><span>菠萝</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="明目系列">明目系列</span></dt>
																		<dd><a title="柠檬" href="#"><span>柠檬</span></a></dd>
																		<dd><a title="猕猴桃" href="#"><span>猕猴桃</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="瘦身系列">瘦身系列</span></dt>
																		<dd><a title="苹果" href="#"><span>苹果</span></a></dd>
																		<dd><a title="西柚" href="#"><span>西柚</span></a></dd>
																		<dd><a title="火龙果" href="#"><span>火龙果</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="护肤系列">护肤系列</span></dt>
																		<dd><a title="苹果" href="#"><span>苹果</span></a></dd>
																		<dd><a title="草莓" href="#"><span>草莓</span></a></dd>
																		<dd><a title="芒果" href="#"><span>芒果</span></a></dd>
																		<dd><a title="哈密瓜" href="#"><span>哈密瓜</span></a></dd>
																		<dd><a title="橙子" href="#"><span>橙子</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="降低胆固醇">降胆固醇</span></dt>
																		<dd><a title="苹果" href="#"><span>苹果</span></a></dd>
																		<dd><a title="西柚" href="#"><span>西柚</span></a></dd>
																		<dd><a title="山楂" href="#"><span>山楂</span></a></dd>
																	</dl>
																	
																	<dl class="dl-sort">
																		<dt><span title="抗癌系列">抗癌系列</span></dt>
																		<dd><a title="苹果" href="#"><span>苹果</span></a></dd>
																		<dd><a title="葡萄" href="#"><span>葡萄</span></a></dd>
																		<dd><a title="橙子" href="#"><span>橙子</span></a></dd>
																		<dd><a title="猕猴桃" href="#"><span>猕猴桃</span></a></dd>
																	</dl>
																</div>
																
															</div>
														</div>
													</div>
												</div>
												<b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/cake.png"></i><a class="ml-22" title="进口水果">进口水果</a></h3>
													<em>&gt;</em></div>
												          <div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="进口水果">进口水果</span></dt>
																		<dd><a title="泰国山竹" href="#"><span>泰国山竹</span></a></dd>
																		<dd><a title="澳洲蓝莓" href="#"><span>澳洲蓝莓</span></a></dd>
																		<dd><a title="越南火龙果" href="#"><span>越南火龙果</span></a></dd>
																		<dd><a title="澳大利亚牛油果" href="#"><span>澳大利亚牛油果</span></a></dd>
																		<dd><a title="智利李子" href="#"><span>智利李子</span></a></dd>
																		<dd><a title="南非葡萄柚" href="#"><span>南非葡萄柚</span></a></dd>
																		<dd><a title="泰国红毛丹" href="#"><span>泰国红毛丹</span></a></dd>
																		<dd><a title="墨西哥鳄梨" href="#"><span>墨西哥鳄梨</span></a></dd>
																		<dd><a title="意大利奇异果" href="#"><span>意大利奇异果</span></a></dd>
																		<dd><a title="智利樱桃" href="#"><span>智利樱桃</span></a></dd>
																		<dd><a title="秘鲁芒果" href="#"><span>秘鲁芒果</span></a></dd>
																	</dl>
																	
																</div>
																
															</div>
														</div>
													</div>
												</div>
                                            <b class="arrow"></b>
											</li>
											
										</ul>
									</div>
								</div>

							</div>
						</div>
						<!--轮播 -->
						<script type="text/javascript">
							(function() {
								$('.am-slider').flexslider();
							});
							$(document).ready(function() {
								$("li").hover(function() {
									$(".category-content .category-list li.first .menu-in").css("display", "none");
									$(".category-content .category-list li.first").removeClass("hover");
									$(this).addClass("hover");
									$(this).children("div.menu-in").css("display", "block")
								}, function() {
									$(this).removeClass("hover")
									$(this).children("div.menu-in").css("display", "none")
								});
							})
						</script>


					<!--小导航 -->
					<div class="am-g am-g-fixed smallnav">
						<div class="am-u-sm-3">
							<a href="sort.html"><img src="images/navsmall.jpg" />
								<div class="title">商品分类</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="#"><img src="images/huismall.jpg" />
								<div class="title">大聚惠</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="index.jsp"><img src="images/mansmall.jpg" />
								<div class="title">个人中心</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="#"><img src="images/moneysmall.jpg" />
								<div class="title">投资理财</div>
							</a>
						</div>
					</div>

					<!--走马灯 -->

					<div class="marqueen">
						<span class="marqueen-title">悦桔拉拉头条</span>
						<div class="demo">

							<ul>
								<li class="title-first"><a target="_blank" href="#">
									<img src="images/TJ2.jpg"></img>
									<span>[特惠]</span>悦桔爆品1分秒								
								</a></li>
								<li class="title-first"><a target="_blank" href="#">
									<span>[公告]</span>悦桔与合肥市签署战略合作协议
								     <img src="images/TJ.jpg"></img>
								     <p>XXXXXXXXXXXXXXXXXX</p>
							    </a></li>
							    
						<div class="mod-vip">
							<div class="m-baseinfo">
								<a href="index.html">
									<img src="images/getAvatar.do.jpg">
								</a>
								<em>
									Hi,<span class="s-name"><%=shopper.getUname() %></span>
									<a href="#"><p>点击更多优惠活动</p></a>									
								</em>
							</div>
							<div class="member-logout">
								<a class="am-btn-warning btn" href="login.jsp">登录</a>
								<a class="am-btn-warning btn" href="register.jsp">注册</a>
							</div>
							<div class="member-login">
								<a href="#"><strong>0</strong>待收货</a>
								<a href="#"><strong>0</strong>待发货</a>
								<a href="#"><strong>0</strong>待付款</a>
								<a href="#"><strong>0</strong>待评价</a>
							</div>
							<div class="clear"></div>	
						</div>																	    
							    
								<li><a target="_blank" href="#"><span>[特惠]</span>洋河年末大促，低至两份五折</a></li>
								<li><a target="_blank" href="#"><span>[公告]</span>华北、华中部分地区配送延迟</a></li>
								<li><a target="_blank" href="#"><span>[特惠]</span>水果大礼包 买1送1！</a></li>
								
							</ul>
                        <div class="advTip"><img src="images/advTip.jpg"/></div>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<script type="text/javascript">
					if ($(window).width() < 640) {
						function autoScroll(obj) {
							$(obj).find("ul").animate({
								marginTop: "-39px"
							}, 500, function() {
								$(this).css({
									marginTop: "0px"
								}).find("li:first").appendTo(this);
							})
						}
						$(function() {
							setInterval('autoScroll(".demo")', 3000);
						})
					}
				</script>
			</div>
			<div class="shopMainbg">
				<div class="shopMain" id="shopmain">

					<!--今日推荐 -->

					<div class="am-g am-g-fixed recommendation">
						<div class="clock am-u-sm-3" >
							<img src="images/2016.png "></img>
							<p>今日<br>推荐</p>
						</div>
						<div class="am-u-sm-4 am-u-lg-3 ">
							<div class="info ">
								<h3>真的有哎</h3>
								<h4>开年福利篇</h4>
							</div>
							<div class="recommendationMain ">
								<img src="images/tj2.png "></img>
							</div>
						</div>						
						<div class="am-u-sm-4 am-u-lg-3 ">
							<div class="info ">
								<h3>囤货过冬</h3>
								<h4>让爱早回家</h4>
							</div>
							<div class="recommendationMain ">
								<img src="images/tj1.png "></img>
							</div>
						</div>
						<div class="am-u-sm-4 am-u-lg-3 ">
							<div class="info ">
								<h3>浪漫情人节</h3>
								<h4>甜甜蜜蜜</h4>
							</div>
							<div class="recommendationMain ">
								<img src="images/yingtao.png "></img>
							</div>
						</div>

					</div>
					<div class="clear "></div>
					<!--热门活动 -->

					<div class="am-container activity ">
						<div class="shopTitle ">
							<h4>活动</h4>
							<h3>你是我的优乐美吗？不，我是你的小葡萄 </h3>
							<span class="more ">
                              <a class="more-link " href="# ">全部活动</a>
                            </span>
						</div>
					
					  <div class="am-g am-g-fixed ">
						<div class="am-u-sm-3 ">
							<div class="icon-sale one "></div>	
								<h4>秒杀</h4>							
							<div class="activityMain ">
								<img src="images/activity.jpg "></img>
							</div>
							<div class="info ">
								<h3>春节送礼优选</h3>
							</div>														
						</div>
						
						<div class="am-u-sm-3 ">
						  <div class="icon-sale two "></div>	
							<h4>特惠</h4>
							<div class="activityMain ">
								<img src="images/activity2.jpg "></img>
							</div>
							<div class="info ">
								<h3>春节送礼优选</h3>								
							</div>							
						</div>						
						
						<div class="am-u-sm-3 ">
							<div class="icon-sale three "></div>
							<h4>团购</h4>
							<div class="activityMain ">
								<img src="images/activity3.gif "></img>
							</div>
							<div class="info ">
								<h3>春节送礼优选</h3>
							</div>							
						</div>						

						<div class="am-u-sm-3 last ">
							<div class="icon-sale "></div>
							<h4>超值</h4>
							<div class="activityMain ">
								<img src="images/activity4.jpg "></img>
							</div>
							<div class="info ">
								<h3>春节送礼优选</h3>
							</div>													
						</div>

					  </div>
                   </div>
					<div class="clear "></div>

					<!--甜点-->
					
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>水果</h4>
							<h3>每一种水果都有一个故事</h3>
							<div class="today-brands ">
								<a href="# ">无花果</a>
								<a href="# ">最适合冰镇的西瓜</a>
								<a href="# ">草莓</a>
								<a href="# ">火龙果</a>
								<a href="# ">萌妹子樱桃</a>
							</div>
							<span class="more ">
                    <a class="more-link " href="# ">更多美味</a>
                        </span>
						</div>
					</div>
					
					<div class="am-g am-g-fixed floodOne ">
						<div class="am-u-sm-5 am-u-md-3 am-u-lg-4 text-one ">
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
										水果大礼包开抢啦
									</div>					
									<div class="sub-title ">
										当西红柿恋上木瓜
									</div>
								</div>
                                  <img src="images/act1.gif " />								
							</a>
						</div>
						<div class="am-u-sm-7 am-u-md-5 am-u-lg-4">
							<div class="text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										仅售：¥33.8
									</div>
									
								</div>
								<a href="# "><img src="images/act2.png " /></a>
							</div>
							<div class="text-two last">
								<div class="outer-con ">
									<div class="title ">
										小确幸无花果
									</div>
									<div class="sub-title ">
										仅售：¥14.8
									</div>
									
								</div>
								<a href="# "><img src="images/无花果.jpg " /></a>
						    </div>
						</div>
		             <div class="am-u-sm-12 am-u-md-4 ">
						<div class="am-u-sm-3 am-u-md-6 text-three">
							<div class="outer-con ">
								<div class="title ">
									橙子
								</div>
								
								<div class="sub-title ">
									尝鲜价：¥10.8
								</div>
							</div>
							<a href="# "><img src="images/5.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-6 text-three">
							<div class="outer-con ">
								<div class="title ">
									樱桃
								</div>
								
								<div class="sub-title ">
									尝鲜价：¥15.8
								</div>
							</div>
							<a href="# "><img src="images/act3.gif" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-6 text-three">
							<div class="outer-con ">
								<div class="title ">
									圣女果
								</div>
								
								<div class="sub-title ">
									尝鲜价：¥9.8
								</div>
							</div>
							<a href="# "><img src="images/img10.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-6 text-three last ">
							<div class="outer-con ">
								<div class="title ">
									小鳄梨
								</div>
								
								<div class="sub-title ">
									尝鲜价：¥18.8
								</div>
							</div>
							<a href="# "><img src="images/鳄梨.gif " /></a>
						</div>
					</div>

					</div>
                 <div class="clear "></div>
					
					
				<%@ include  file="footer.jsp"%>
			</div>
		</div>
		</div>
		<!--引导 -->

		<div class="navCir">
			<li class="active"><a href="home3.jsp"><i class="am-icon-home "></i>首页</a></li>
			<li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
			<li><a href="shopcart.html"><i class="am-icon-shopping-basket"></i>购物车</a></li>	
			<li><a href="index.html"><i class="am-icon-user"></i>我的</a></li>					
		</div>
		<!--菜单 -->
		<div class=tip>
			<div id="sidebar">
				<div id="wrap">
					<div id="prof" class="item ">
						<a href="index.jsp ">
							<span class="setting "></span>
						</a>
						<div class="ibar_login_box status_login ">
							<div class="avatar_box ">
								<p class="avatar_imgbox "><img src="images/no-img_mid_.jpg " /></p>
								<ul class="user_info ">
									<li>用户名：sl1903</li>
									<li>级&nbsp;别：普通会员</li>
								</ul>
							</div>
							<div class="login_btnbox ">
								<a href="# " class="login_order ">我的订单</a>
								<a href="# " class="login_favorite ">我的收藏</a>
							</div>
							<i class="icon_arrow_white "></i>
						</div>

					</div>
					<div id="shopCart " class="item ">
						<a href="shopcart.jsp">
							<span class="message "></span>
						</a>
						<p>
							购物车
						</p>
						<p class="cart_num ">0</p>
					</div>
					
					<div class="quick_toggle ">
						<li class="qtitem ">
							<a href="# "><span class="kfzx "></span></a>
							<div class="mp_tooltip ">客服中心<i class="icon_arrow_right_black "></i></div>
						</li>
						<!--二维码 -->
						<li class="qtitem ">
							<a href="#none "><span class="mpbtn_qrcode "></span></a>
							<div class="mp_qrcode " style="display:none; "><img src="images/weixin_code_145.png " /><i class="icon_arrow_white "></i></div>
						</li>
						<li class="qtitem ">
							<a href="#top " class="return_top "><span class="top "></span></a>
						</li>
					</div>

					<!--回到顶部 -->
					<div id="quick_links_pop " class="quick_links_pop hide "></div>

				</div>

			</div>
			<div id="prof-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					我
				</div>
			</div>
			<div id="shopCart-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					购物车
				</div>
			</div>
			
			
			<div id="broadcast-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				
			</div>
		</div>
		<script>
			window.jQuery || document.write('<script src="basic/js/jquery.min.js "><\/script>');
		</script>
		<script type="text/javascript " src="basic/js/quick_links.js "></script>
	</body>

</html>