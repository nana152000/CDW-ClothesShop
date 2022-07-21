<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="label.thanhtoan" /></title>
</head>
<body>
	<div class="breadcrumb-area pt-205 pb-210"
		style="background-image: url(<c:url value="/assets/user/img/bg/bgr.jpg"></c:url>)">
		<div class="container">
			<div class="breadcrumb-content text-center">
				<h2 style="color: black;">
					<spring:message code="label.thanhtoan1" />
				</h2>
				<ul>
					<li><a href="index.html" style="color: black;"><spring:message
								code="label.trangchu" /></a></li>
					<li style="color: black;">/</li>
					<li style="color: black;"><spring:message
							code="label.thanhtoan1" /></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- checkout-area start -->
	<div class="checkout-area ptb-100">
		<div class="container">
			<div class="row">
				<form:form action="thanh-toan" method="POST" modelAttribute="orders"
					onsubmit="return checkLoginOrder()" name="ordersForm">
					<div class="col-lg-6 col-md-12 col-12" style="float: left;">
						<div class="checkbox-form">
							<h3>
								<spring:message code="label.thanhtoan2" />
							</h3>
							<div class="row">
								<div class="col-md-12">
									<div class="checkout-form-list" style="display: none">
										<label>Id <span class="required">*</span></label>
										<form:input type="text" placeholder="" path="user.id" />
									</div>
								</div>
								<div class="col-md-12">
									<div class="checkout-form-list">
										<label><spring:message code="label.hoten" /><span
											class="required">*</span></label>
										<form:input type="text" placeholder=""
											path="user.display_name" />
									</div>
								</div>
								<div class="col-md-12">
									<div class="checkout-form-list" style="display: none">
										<label><spring:message code="label.mk" /> <span
											class="required">*</span></label>
										<form:input type="text" placeholder="" path="user.password"
											name="pass" id="pass" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="checkout-form-list">
										<label>Email <span class="required">*</span></label>
										<form:input type="email" path="user.email" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="checkout-form-list">
										<label><spring:message code="label.sdt" /><span
											class="required">*</span></label>
										<form:input type="text" path="user.phone" />
									</div>
								</div>
								<div class="col-md-12">
									<div class="checkout-form-list">
										<label><spring:message code="label.diachi" /><span
											class="required">*</span></label>
										<form:input type="text" placeholder="Địa chỉ"
											path="user.address" />
									</div>
								</div>
							</div>
							<div class="different-address">
								<div class="order-notes">
									<div class="checkout-form-list mrg-nn">
										<label><spring:message code="label.ghichu" /></label>
										<form:textarea path="note" id="checkout-mess" cols="30"
											rows="10"
											placeholder="Ghi chú về đơn đặt hàng của bạn, ví dụ: lưu ý đặc biệt để giao hàng."></form:textarea>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 col-12" style="float: right;">
						<div class="your-order">
							<div class="row">
								<div class="col-md-12">
									<div class="coupon-accordion">
										<h3 style="font-size: 15px; font-weight: bold;">
											<span><spring:message code="label.dh1" /></span> <span
												id="showlogin"
												style="font-weight: normal; text-transform: none;"><spring:message
													code="label.dh2" /></span>
										</h3>
										<div id="checkout-login" class="coupon-content">
											<div class="coupon-info">
												<div class="your-order-table table-responsive">
													<table>
														<thead>
															<tr>
																<th class="product-name"><spring:message
																		code="label.sanpham" /></th>
																<th class="product-total"><spring:message
																		code="label.gia" /></th>
															</tr>
														</thead>
														<tbody>
															<c:forEach var="cart" items="${ Cart }">
																<tr class="cart_item">
																	<td class="product-name">${ cart.value.product.name }<strong
																		class="product-quantity"> × ${ cart.value.quantity }</strong>
																	</td>
																	<td class="product-total"><span class="amount"><fmt:formatNumber
																				type="number" groupingUsed="true"
																				value="${ cart.value.totalPrice }" /> ₫</span></td>
																</tr>
															</c:forEach>
														</tbody>

													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 ml-auto">
									<div class="cart-page-total" style="padding-top: 0">
										<ul>
											<li style="font-size: 29px"><spring:message
													code="label.tongtt" />: <span style="font-weight: normal;"><fmt:formatNumber
														type="number" groupingUsed="true"
														value="${ TotalPriceCart }" /> ₫</span></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="payment-method">
								<div class="payment-accordion">
									<div class="panel-group" id="faq">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h5 class="panel-title">
													<a data-toggle="collapse" aria-expanded="true"
														data-parent="#faq" href="#payment-1"><spring:message
															code="label.tt1" />.</a>
												</h5>
											</div>
											<div id="payment-1" class="panel-collapse collapse show">
												<div class="panel-body">
													<p>
														<spring:message code="label.tt2" />
														.
													</p>
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading">
												<h5 class="panel-title">
													<a class="collapsed" data-toggle="collapse"
														aria-expanded="false" data-parent="#faq" href="#payment-3"><spring:message
															code="label.tt3" /></a>
												</h5>
											</div>
											<div id="payment-3" class="panel-collapse collapse">
												<div class="panel-body">
													<p>
														<spring:message code="label.tt4" />
														.
													</p>
												</div>
											</div>
										</div>
									</div>
									<div class="order-button-payment">
										<input type="submit" value="Đặt hàng" id="orderTogglee" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>