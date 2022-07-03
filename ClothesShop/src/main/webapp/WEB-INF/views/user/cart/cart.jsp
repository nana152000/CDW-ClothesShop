<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop quần áo - Giỏ hàng</title>
</head>
<body>
	<div class="breadcrumb-area pt-205 pb-210"
		style="background-image: url(<c:url value="/assets/user/img/bg/breadcrumb.jpg"></c:url>)">
		<div class="container">
			<div class="breadcrumb-content text-center">
				<h2>Giỏ hàng</h2>
				<ul>
					<li><a href="index.html">Trang chủ</a></li>
					<li>Giỏ hàng</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- shopping-cart-area start -->
	<div class="cart-main-area pt-95 pb-100">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<h1 class="cart-heading">Giỏ hàng</h1>
					<form action="#">
						<div class="table-content table-responsive">
							<table>
								<thead>
									<tr>
										<th>Stt</th>
										<th>Hình ảnh</th>
										<th>Sản phẩm</th>
										<th>Màu</th>
										<th>Giá</th>
										<th>Số lượng</th>
										<th>Tổng tiền</th>
										<th>remove</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="cart" items="${ Cart }">
										<tr>
											<td class="product-remove">1</td>
											<td class="product-thumbnail"><c:forEach var="color"
													items="${ cart.value.product.colors }" varStatus="index">
													<c:if test="${index.first}">
														<c:forEach var="img" items="${ color.image }"
															varStatus="index">
															<c:if test="${index.first}">
																<a href="#"> <img style="width: 80px;"
																	src="<c:url value="/assets/user/img/product/${cart.value.product.id}/${img}"/>"
																	alt="">
																</a>
															</c:if>
														</c:forEach>
													</c:if>
												</c:forEach></td>
											<td class="product-name"><a href="#">${ cart.value.product.name }
											</a></td>
											<td class="product-remove"><c:forEach var="color"
													items="${ cart.value.product.colors }" varStatus="index">
													<div
														style="width: 30px; height: 30px; margin-left: 45px; background: ${ color.color_code }; -moz-border-radius: 60px; -webkit-border-radius: 60px; border-radius: 60px;"></div>
												</c:forEach></td>
											<td class="product-price-cart"><span class="amount"><fmt:formatNumber
														type="number" groupingUsed="true"
														value="${ cart.value.product.price }" /> ₫</span></td>
											<td class="product-quantity"><input type="number"
												min="0" max="1000" placeholder="1"
												id="quantity-cart-${ cart.key }" size="16" type="text"
												value="${ cart.value.quanty }"></td>
											<td class="product-subtotal"><fmt:formatNumber
													type="number" groupingUsed="true"
													value="${ cart.value.totalPrice }" /> ₫</td>
											<td class="product-remove"><a
												href="<c:url value="/DeleteCart/${ cart.key }"/>"><i
													class="pe-7s-close"></i></a>
												<button type="button" data-id="${ cart.key }"
													class="edit-quatity-cart">
													<span>Update</span>
												</button></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="coupon-all">
									<div class="coupon">
										<input id="coupon_code" class="input-text" name="coupon_code"
											value="" placeholder="Coupon code" type="text"> <input
											class="button" name="apply_coupon" value="Apply coupon"
											type="submit">
									</div>
									<div class="coupon2">
										<%-- <input onclick="EditQuantity();" data-id="${ cart.key }"
											class="button" name="update_cart" value="Update cart"
											type="submit"> --%>
										<button type="button" data-id="${ cart.key }"
											class="edit-quatity-cart">
											<span>Update</span>
										</button>

									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5 ml-auto">
								<div class="cart-page-total">
									<h2>Cart totals</h2>
									<ul>
										<li>Subtotal<span><fmt:formatNumber type="number"
													groupingUsed="true" value="${ TotalPriceCart }" /> ₫</span></li>
										<li>Total<span><fmt:formatNumber type="number"
													groupingUsed="true" value="${ TotalPriceCart }" /> ₫</span></li>
									</ul>
									<a href="<c:url value="/thanh-toan"/>">Proceed to checkout</a>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>