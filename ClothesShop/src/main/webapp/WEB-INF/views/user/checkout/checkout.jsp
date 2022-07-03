<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop quần áo - Thanh toán</title>
</head>
<body>
	<div class="breadcrumb-area pt-205 pb-210"
		style="background-image: url(<c:url value="/assets/user/img/bg/breadcrumb.jpg"></c:url>)">
		<div class="container">
			<div class="breadcrumb-content text-center">
				<h2>Thanh toán</h2>
				<ul>
					<li><a href="index.html">Trang chủ</a></li>
					<li>Thanh toán</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- checkout-area start -->
	<div class="checkout-area ptb-100">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="coupon-accordion">
						<!-- ACCORDION START -->
						<h3>
							Returning customer? <span id="showlogin">Nhấn vào đây để
								đăng nhập</span>
						</h3>
						<div id="checkout-login" class="coupon-content">
							<div class="coupon-info">
								<p class="coupon-text">Quisque gravida turpis sit amet nulla
									posuere lacinia. Cras sed est sit amet ipsum luctus.</p>
								<form action="#">
									<p class="form-row-first">
										<label>Username or email <span class="required">*</span></label>
										<input type="text" />
									</p>
									<p class="form-row-last">
										<label>Password <span class="required">*</span></label> <input
											type="text" />
									</p>
									<p class="form-row">
										<input type="submit" value="Login" /> <label> <input
											type="checkbox" /> Remember me
										</label>
									</p>
									<p class="lost-password">
										<a href="#">Lost your password?</a>
									</p>
								</form>
							</div>
						</div>
						<!-- ACCORDION END -->
						<!-- ACCORDION START -->
						<h3>
							Have a coupon? <span id="showcoupon">Click here to enter
								your code</span>
						</h3>
						<div id="checkout_coupon" class="coupon-checkout-content">
							<div class="coupon-info">
								<form action="#">
									<p class="checkout-coupon">
										<input type="text" placeholder="Coupon code" /> <input
											type="submit" value="Apply Coupon" />
									</p>
								</form>
							</div>
						</div>
						<!-- ACCORDION END -->
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 col-md-12 col-12">
					<form:form action="thanh-toan" method="POST" modelAttribute="orders">
						<div class="checkbox-form">
							<h3>Thanh toán đơn hàng</h3>
							<div class="row">
								<div class="col-md-12">
									<div class="checkout-form-list">
										<label>Họ và tên <span class="required">*</span></label> 
										<form:input type="text" placeholder="" path="display_name"/>
									</div>
								</div>
								<div class="col-md-12">
									<div class="checkout-form-list">
										<label>Họ và tên <span class="required">*</span></label> 
										<form:input type="text" placeholder="" path="password"/>
									</div>
								</div>
								<div class="col-md-6">
									<div class="checkout-form-list">
										<label>Email <span class="required">*</span></label> <form:input
											type="email" path="user"/>
									</div>
								</div>
								<div class="col-md-6">
									<div class="checkout-form-list">
										<label>Số điện thoại <span class="required">*</span></label> <form:input
											type="text" path="phone"/>
									</div>
								</div>
								<div class="col-md-12">
									<div class="checkout-form-list">
										<label>Địa chỉ <span class="required">*</span></label> <form:input
											type="text" placeholder="Street address" path="address"/>
									</div>
								</div>							
							</div>
							<div class="different-address">							
								<div class="order-notes">
									<div class="checkout-form-list mrg-nn">
										<label>Ghi chú</label>
										<form:textarea path="note"  id="checkout-mess" cols="30" rows="10"
											placeholder="Notes about your order, e.g. special notes for delivery."></form:textarea>
									</div>
								</div>
							</div>
							<input type="submit" value="Đặt hàng" />
						</div>
					</form:form>
				</div>
				<div class="col-lg-6 col-md-12 col-12">
					<div class="your-order">
						<h3>Đơn hàng của bạn</h3>
						<div class="your-order-table table-responsive">
							<table>
								<thead>
									<tr>
										<th class="product-name">Sản phẩm</th>
										<th class="product-total">Giá</th>
									</tr>
								</thead>
								<tbody>
									<tr class="cart_item">
										<td class="product-name">Vestibulum suscipit <strong
											class="product-quantity"> × 1</strong>
										</td>
										<td class="product-total"><span class="amount">£165.00</span>
										</td>
									</tr>								
								</tbody>
								<tfoot>
									<tr class="cart-subtotal">
										<th>Tổng đơn hàng</th>
										<td><span class="amount">£215.00</span></td>
									</tr>
									<tr class="order-total">
										<th>Tổng đơn đặt hàng</th>
										<td><strong><span class="amount">£215.00</span></strong>
										</td>
									</tr>
								</tfoot>
							</table>
						</div>
						<div class="payment-method">
							<div class="payment-accordion">
								<div class="panel-group" id="faq">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h5 class="panel-title">
												<a data-toggle="collapse" aria-expanded="true"
													data-parent="#faq" href="#payment-1">Direct Bank
													Transfer.</a>
											</h5>
										</div>
										<div id="payment-1" class="panel-collapse collapse show">
											<div class="panel-body">
												<p>Make your payment directly into our bank account.
													Please use your Order ID as the payment reference. Your
													order won’t be shipped until the funds have cleared in our
													account.</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading">
											<h5 class="panel-title">
												<a class="collapsed" data-toggle="collapse"
													aria-expanded="false" data-parent="#faq" href="#payment-2">Thanh toán khi nhận hàng</a>
											</h5>
										</div>
										<div id="payment-2" class="panel-collapse collapse">
											<div class="panel-body">
												<p>Make your payment directly into our bank account.
													Please use your Order ID as the payment reference. Your
													order won’t be shipped until the funds have cleared in our
													account.</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading">
											<h5 class="panel-title">
												<a class="collapsed" data-toggle="collapse"
													aria-expanded="false" data-parent="#faq" href="#payment-3">PayPal</a>
											</h5>
										</div>
										<div id="payment-3" class="panel-collapse collapse">
											<div class="panel-body">
												<p>Make your payment directly into our bank account.
													Please use your Order ID as the payment reference. Your
													order won’t be shipped until the funds have cleared in our
													account.</p>
											</div>
										</div>
									</div>
								</div>
								<div class="order-button-payment">
									<input type="submit" value="Đặt hàng" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>