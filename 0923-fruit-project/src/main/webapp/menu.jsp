
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<aside class="menu">
<%-- <%
	 String uname=(String)request.getAttribute("uname");
	 String pwd=(String)request.getAttribute("pwd");
	%> --%>
				<ul>
					<li class="person active">
						<a href="index.jsp"><i class="am-icon-user"></i>个人中心</a>
					</li>
					<li class="person">
						<p><i class="am-icon-newspaper-o"></i>个人资料</p>
						<ul>
							<li> <a href="personinformation.jsp<%-- ?uname=<%=uname%>&pwd=<%=pwd%> --%>">个人信息</a></li>
							<li> <a href="safety.jsp">安全设置</a></li>
							<li> <a href="cardlist.jsp">快捷支付</a></li>
						</ul>
					</li>
					<li class="person">
						<p><i class="am-icon-balance-scale"></i>我的交易</p>
						<ul>
							<li><a href="order.jsp">订单管理</a></li>
							<li> <a href="change.jsp">退款售后</a></li>
							<li> <a href="comment.jsp">评价商品</a></li>
						</ul>
					</li>
					<li class="person">
						<p><i class="am-icon-dollar"></i>我的资产</p>
						<ul>
							<li> <a href="#">我的积分</a></li>
							<li> <a href="#">优惠券 </a></li>
							<li> <a href="#">红包</a></li>
							<li> <a href="#">账户余额</a></li>
							<li> <a href="#">账单明细</a></li>
						</ul>
					</li>

					<!-- <li class="person">
						<p><i class="am-icon-tags"></i>我的收藏</p>
						<ul>
							<li> <a href="collection.html">收藏</a></li>
							<li> <a href="foot.html">足迹</a></li>														
						</ul>
					</li> -->

					<li class="person">
						<p><i class="am-icon-qq"></i>在线客服</p>
						<ul>
							<li> <a href="consultation.html">商品咨询</a></li>
							<li> <a href="suggest.html">意见反馈</a></li>							
							
							<li> <a href="news.html">我的消息</a></li>
						</ul>
					</li>
				</ul>

			</aside>
