<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header class="res-header-sm">
	<div class="header-bottom clearfix">
		<div class="container">
			<div class="header-bottom-wrapper">
				<div class="logo-2 ptb-40">
					<a href="<c:url value="/trang-chu"/>"> <img class="img-logo"
						src="<c:url value="/assets/user/img/logo/logo.png"></c:url>"
						alt="">
					</a>
				</div>
				<div class="menu-style-2 book-menu menu-hover">
					<nav>
						<ul>
							<c:forEach var="menu" items="${listMenu}">
								<li><div class="dropdown_menu">
										<c:if test="${index.first}">
											<button class="dropbtn_menu">
												<a class="active"
													href="<c:url value="/${menu.url}"></c:url>">${menu.name}</a>
											</button>
										</c:if>
										<c:if test="${not index.first}">
											<button class="dropbtn_menu">
												<a href='<c:url value="/${menu.url}"></c:url>'>${menu.name}</a>
											</button>
										</c:if>
									</div></li>
							</c:forEach>

						</ul>
					</nav>
				</div>
				<div class="furits-login-cart">
					<div class="furits-login">
						<ul>
							<li><a href="login.html">Login</a></li>
							<li><a href="register.html">Reg</a></li>
						</ul>
					</div>
					<div class="header-cart-4 furits-cart">
						<a class="icon-cart" href="#"> <i class="pe-7s-shopbag"></i> <span
							class="handicraft-count">02</span>
						</a>
						<ul class="cart-dropdown">
							<li class="single-product-cart">
								<div class="cart-img">
									<a href="#"><img
										src="<c:url value="/assets/user/img/cart/1.jpg"></c:url>"
										alt=""></a>
								</div>
								<div class="cart-title">
									<h5>
										<a href="#"> Bits Headphone</a>
									</h5>
									<h6>
										<a href="#">Black</a>
									</h6>
									<span>$80.00 x 1</span>
								</div>
								<div class="cart-delete">
									<a href="#"><i class="ti-trash"></i></a>
								</div>
							</li>
							<li class="single-product-cart">
								<div class="cart-img">
									<a href="#"><img
										src="<c:url value="/assets/user/img/cart/2.jpg"></c:url>"
										alt=""></a>
								</div>
								<div class="cart-title">
									<h5>
										<a href="#"> Bits Headphone</a>
									</h5>
									<h6>
										<a href="#">Black</a>
									</h6>
									<span>$80.00 x 1</span>
								</div>
								<div class="cart-delete">
									<a href="#"><i class="ti-trash"></i></a>
								</div>
							</li>
							<li class="single-product-cart">
								<div class="cart-img">
									<a href="#"><img
										src="<c:url value="/assets/user/img/cart/3.jpg"></c:url>"
										alt=""></a>
								</div>
								<div class="cart-title">
									<h5>
										<a href="#"> Bits Headphone</a>
									</h5>
									<h6>
										<a href="#">Black</a>
									</h6>
									<span>$80.00 x 1</span>
								</div>
								<div class="cart-delete">
									<a href="#"><i class="ti-trash"></i></a>
								</div>
							</li>
							<li class="cart-space">
								<div class="cart-sub">
									<h4>Subtotal</h4>
								</div>
								<div class="cart-price">
									<h4>$240.00</h4>
								</div>
							</li>
							<li class="cart-btn-wrapper"><a class="cart-btn btn-hover"
								href="cart.html">view cart</a> <a class="cart-btn btn-hover"
								href="checkout.html">checkout</a></li>
						</ul>
					</div>
					<div class="furniture-wishlist">
						<ul>
							<li><a href="wishlist.html"><i class="ti-heart"></i> </a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>