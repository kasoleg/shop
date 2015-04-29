<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<div class="header-top">
		<div class="top-links">
			<ul>
				<li>
					<span>918-567-99-80</span>
				</li>
				<li>
					<span>
						<a href="#" title="Contact Us">Contact Us</a>
					</span>
				</li>
				<li>
					<span>
						<a href="#" title="Help">Help</a>
					</span>
				</li>
			</ul>
		</div>
	</div>
	<div class="header">
		<div class="shop-logo">
			<a href="#" title="Shop.com">
				<img src="<%=request.getContextPath()%>/resources/common/img/header/logo.png" alt="Shop.com - Online Shopping Russia" />
			</a>
		</div>
		<div class="search">
			<form name=search action="#" method="get">
				<div class="search-bar">
					<div id="inner-search">
						<input name="query" type="text" class="input-search" placeholder="Search from millions of products" />
						<select id="select">
							<option value="All" selected="selected">All Stores</option>
							<option value="Mobiles">Mobiles</option>
							<option value="Tablets">Tablets</option>
						</select>
					</div>
					<div id="search-submit">
						<input id="search-icon" type="submit" value="Search" />
					</div>
				</div>
			</form>
		</div>
		<div class="acc-cart">
		<div class="login-acc">
			<div id="shopLogin">
				<c:if test="${not empty cookie.cust_name}">
					<span class="login-hello">HELLO, ${cookie.cust_name.value}</span>
				</c:if>
				<c:if test="${empty cookie.cust_name}">
					<a id="loginlink" href="login" title="Login">LOGIN / REGISTER</a>
				</c:if>
			</div>
			<div id="account">
				<a href="#">
					MY ACCOUNT
					<img src="<%=request.getContextPath()%>/resources/common/img/header/arrow_down.png" />
				</a>
				<ul id="shop-dropdown-menu" class="shop-dropdown-menu" role="menu" aria-labelledby="dLabel" style="display: none;">
					<li>
						<a href="#" title="Orders">My Orders</a>
					</li>
					<li>
						<a href="#" title="WishList">My WishList</a>
					</li>
					<c:if test="${not empty cookie.cust_name}">
						<li>
							<c:url var="logoutUrl" value="/logout"/>
							<a href="${logoutUrl}" title="Logout">Logout</a>
						</li>
					</c:if>
				</ul>
			</div>
		</div>
		<div class="cart">
			<div class="cart-img">
				<a href="#">
					<span class="img"></span>
				</a>
			</div>
		</div>
	</div>
	</div>
	
	
