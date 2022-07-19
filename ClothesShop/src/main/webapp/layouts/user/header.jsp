<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<header class="res-header-sm"
	style="position: fixed; width: 100%; box-sizing: border-box; background: white; z-index: 3;">
	<div class="header-bottom clearfix" style="height: 100px;">
		<div class="container">
			<div class="header-bottom-wrapper" style="height: 100px">
				<div class="logo-2 ptb-20">
					<a href="<c:url value='/trang-chu'/>"> <img class="img-logo"
						src="<c:url value='/assets/user/img/logo/logo.png'></c:url>"
						alt="">
					</a>
				</div>
				<div class="menu-style-2 book-menu menu-hover">
					<nav>
						<ul>
							<li><div class="dropdown_menu">
									<button class="dropbtn_menu">
										<a class="active" href="<c:url value='/trang-chu'></c:url>">Trang
											chủ</a>
									</button>
								</div></li>
							<li><div>
									<button class="dropbtn_menu">
										<a class="active" href="<c:url value='/san-pham'></c:url>">Sản
											phẩm</a>
									</button>
								</div></li>
							<li><div>
									<button class="dropbtn_menu">
										<a class="active" href="<c:url value='/gioi-thieu'></c:url>">Giới
											thiệu</a>
									</button>
								</div></li>
							<li><div>
									<button class="dropbtn_menu">
										<a class="active" href="<c:url value='/lien-he'></c:url>">Liên
											hệ</a>
									</button>
								</div></li>
						</ul>
					</nav>
				</div>
				<div class="furits-login-cart">
					<div class="furits-login" style="padding: 40px 0 10px;">
						<c:if test="${empty loginUser }">
							<ul>
								<li><a href="<c:url value="/dang-nhap"></c:url>">Đăng
										nhập</a></li>
								<li><a href="<c:url value="/dang-ky"></c:url>">Đăng ký</a></li>
							</ul>
						</c:if>
						<c:if test="${not empty loginUser }">
							<ul>
								<li><a href="<c:url value="#"></c:url>">${loginUser.display_name}</a></li>
								<li><a href="<c:url value="/dang-xuat"></c:url>">Đăng
										xuất</a></li>
							</ul>
						</c:if>
					</div>
					<div class="header-cart-4 furits-cart" style="bottom: 20px">
						<a class="icon-cart" href="<c:url value="/gio-hang"/>"> <i
							class="pe-7s-shopbag"></i> <c:if
								test="${ TotalQuantityCart == null }">
								<span class="handicraft-count">0</span>
							</c:if> <c:if test="${TotalQuantityCart != null }">
								<span class="handicraft-count">${ TotalQuantityCart }</span>
							</c:if>
						</a>
						<ul class="cart-dropdown">
							<c:forEach var="cart" items="${ Cart }" varStatus="loop">
								<c:if test="${ loop.index+1 < 4}">
									<li class="single-product-cart">
										<div class="cart-img">
											<a href="#"><img
												src="<c:url value="/assets/user/img/cart/1.jpg"></c:url>"
												alt=""></a>
										</div>
										<div class="cart-title">
											<h5>
												<a href="#"> ${ cart.value.product.name }</a>
											</h5>
											<h6>
												<a href="#">Size: ${ cart.value.size }</a>
											</h6>
											<span>${ cart.value.product.price } x ${ cart.value.quantity }</span>
										</div>
									</li>
								</c:if>
							</c:forEach>
							<li class="cart-btn-wrapper"><a class="cart-btn btn-hover"
								href="<c:url value="/gio-hang"></c:url>">Xem thêm</a></li>
							<li class="cart-space" style="padding-top: 30px;">
								<div class="cart-sub">
									<h4>Tổng:</h4>
								</div>
								<div class="cart-price">
									<h4>
										<fmt:formatNumber type="number" groupingUsed="true"
											value="${ TotalPriceCart }" />
										₫
									</h4>
								</div>
							</li>
						</ul>
					</div>
					<div class="furniture-wishlist">
						<ul>
							<li><a href="<c:url value="/yeu-thich"></c:url>"><i
									class="ti-heart"></i> </a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>