<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<title><spring:message code="label.titleHome8" /></title>
<body>
	<div style="height: 105px"></div>
	<div
		class="breadcrumb-area pt-205 breadcrumb-padding pb-210 background-banner"
		style="background-image: url(<c:url value='/assets/user/img/bg/bgr.jpg'></c:url>);">
		<div class="container-fluid">
			<div class="breadcrumb-content text-center">
				<h2 style="color: black;">
					<spring:message code="label.shopquanao" />
				</h2>
				<ul>
					<li><a href="<c:url value='/trang-chu'/>"
						style="color: black;"><spring:message code="label.trangchu" /></a></li>
					<li style="color: black;">/</li>
					<li style="color: black;"><spring:message
							code="label.yeuthich" /></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="cart-main-area pt-95 pb-100">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<h1 class="cart-heading">
						<spring:message code="label.yeuthich1" />
					</h1>
					<form action="#">
						<div class="table-content table-responsive">
							<table>
								<thead>
									<div class="row">
										<div class="col-md-3">
											<th><spring:message code="label.ha" /></th>
										</div>
										<div class="col-md-3">
											<th><spring:message code="label.sanpham" /></th>
										</div>
										<div class="col-md-3">
											<th><spring:message code="label.gia" /></th>
										</div>
									</div>
								</thead>
								<tbody>
									<c:forEach var="item" items="${ listFavo }" varStatus="loop">
										<tr>
											<td class="product-thumbnail"><a href="#"> <img
													style="width: 80px;"
													src="<c:url value="/assets/user/img/product/${item.product.id}/${listImage[loop.index]}"/>"
													alt="">
											</a></td>
											<td class="product-remove">${item.product.name }</td>
											<td class="product-price-cart"><c:if
													test="${item.product.sale !=0 }">
													<span style="text-decoration: line-through;"><fmt:formatNumber
															type="number" groupingUsed="true"
															value="${ item.product.price }" /> ₫</span>
													<span class="amount"> <fmt:formatNumber
															type="number" groupingUsed="true"
															value="${ item.product.price * (100-cart.value.product.sale)/100}" />
														₫
													</span>
												</c:if> <c:if test="${item.product.sale ==0 }">
													<span class="amount"> <fmt:formatNumber
															type="number" groupingUsed="true"
															value="${ item.product.price }" /> ₫
													</span>
												</c:if></td>

										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div class="row">
							<div class="col-md-7 ml-auto">
								<div class="coupon-all">
									<p style="font-size: 18px;">
										<spring:message code="label.t1" />
										<a href="<c:url value="/san-pham"></c:url>"
											style="font-weight: bold; font-size: 18px;"><spring:message
												code="label.t2" /></a>
									</p>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>