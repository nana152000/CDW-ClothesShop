<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><spring:message code="label.tk" /></title>
</head>
<body>
	<div class="breadcrumb-area pt-205 pb-210"
		style="background-image: url(<c:url value="/assets/user/img/bg/bgr.jpg"></c:url>)">
		<div class="container">
			<div class="breadcrumb-content text-center">
				<h2 style="color: black;">
					<spring:message code="label.tkb" />
				</h2>
				<ul>
					<li><a href="<c:url value="/trang-chu"></c:url>"
						style="color: black;"><spring:message code="label.trangchu" /></a></li>
					<li style="color: black;"><spring:message code="label.tkb" /></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- shopping-cart-area start -->
	<div class="checkout-area ptb-100">
		<div class="container">
			<div class="row">
				<form:form action="save" method="POST" modelAttribute="user">
					<div class="col-lg-6 col-md-12 col-12" style="float: left;">
						<div class="checkbox-form">
							<h3>
								<spring:message code="label.tkb" />
							</h3>
							<div class="row">
								<div class="col-md-12" style="display: none">
									<div class="checkout-form-list">
										<label>id <span class="required">*</span></label> <input
											type="text" readonly class="form-control-plaintext"
											id="staticEmail" value="${user.id}">
										<form:hidden path="id" />
									</div>
								</div>
								<div class="col-md-12">
									<div class="checkout-form-list">
										<label><spring:message code="label.hoten" /> <span
											class="required">*</span></label>
										<form:input type="text" placeholder="" path="display_name" />
									</div>
								</div>
								<div class="col-md-12">
									<div class="checkout-form-list" style="display: none">
										<label><spring:message code="label.mk" /> <span
											class="required">*</span></label>
										<form:input type="text" placeholder="" path="password"
											name="pass" id="pass" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="checkout-form-list">
										<label>Email <span class="required">*</span></label>
										<form:input type="email" path="email" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="checkout-form-list">
										<label><spring:message code="label.sdt" /><span
											class="required">*</span></label>
										<form:input type="text" path="phone" />
									</div>
								</div>
								<div class="col-md-12">
									<div class="checkout-form-list">
										<label><spring:message code="label.diachi" /><span
											class="required">*</span></label>
										<form:input type="text" placeholder="Địa chỉ" path="address" />
									</div>
								</div>
								<div class="order-button-payment">
									<input type="submit" value="Sửa thông tin"
										style="width: 200px;" />
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
											<span><spring:message code="label.ls" /></span> <span
												id="showlogin"
												style="font-weight: normal; text-transform: none;"><spring:message
													code="label.td1" /></span>
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
															<c:forEach var="orderdetail"
																items="${ listOrderDetails }">
																<tr class="cart_item">
																	<td class="product-name">${ orderdetail.product.name }<strong
																		class="product-quantity"> × ${ orderdetail.quantity }</strong>
																	</td>
																	<td class="product-total"><span class="amount"><fmt:formatNumber
																				type="number" groupingUsed="true"
																				value="${ orderdetail.total }" /> ₫</span></td>
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
													code="label.tongdatt" />: <span
												style="font-weight: normal;"><fmt:formatNumber
														type="number" groupingUsed="true" value="${ totalOrder }" />
													₫</span></li>
										</ul>
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