<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop quần áo - Chi tiết sản phẩm</title>
</head>
<body>
	<!-- banner  -->
	<div class="breadcrumb-area pt-205 pb-210"
		style="background-image: url(<c:url value='/assets/user/img/bg/bgr.jpg'></c:url>)">
		<div class="container">
			<div class="breadcrumb-content text-center">
				<h2 style="color: black;">Chi tiết sản phẩm</h2>
				<ul>
					<li><a href="<c:url value='/trang-chu'/>"
						style="color: black;">Trang chủ</a></li>
					<li style="color: black;">/</li>
					<li style="color: black;">Sản phẩm</li>
					<li style="color: black;">/</li>
					<li style="color: black;">Chi tiết sản phẩm</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- product detail -->
	<div class="product-details ptb-100 pb-90">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-7 col-12">
					<div class="product-details-img-content">
						<div class="product-details-tab mr-70">
							<div class="product-details-large tab-content">
								<c:forEach var="image" items="${listImageById}" varStatus="img">
									<c:if test="${img.first}">
										<div class="tab-pane active show fade"
											id="pro-details${img.index}" role="tabpanel">
											<div class="easyzoom easyzoom--overlay">
												<a
													href="<c:url value="/assets/user/img/product/${idProduct}/${image}"/>">
													<img
													src="<c:url value="/assets/user/img/product/${idProduct}/${image}"/>"
													alt="">
												</a>
											</div>
										</div>
									</c:if>
									<c:if test="${not img.first}">
										<div class="tab-pane fade" id="pro-details${img.index}"
											role="tabpanel">
											<div class="easyzoom easyzoom--overlay">
												<a
													href="<c:url value="/assets/user/img/product/${idProduct}/${image}"/>">
													<img
													src="<c:url value="/assets/user/img/product/${idProduct}/${image}"/>"
													alt="">
												</a>
											</div>
										</div>
									</c:if>
								</c:forEach>
							</div>

							<div class="product-details-small nav mt-12" role=tablist>
								<c:forEach var="image" items="${listImageById}" varStatus="img">
									<c:if test="${img.first}">
										<a class="active mr-12" href="#pro-details${img.index}"
											data-toggle="tab" role="tab" aria-selected="true"> <img
											style="width: 110px;"
											src="<c:url value="/assets/user/img/product/${idProduct}/${image}"/>"
											alt="">
										</a>
									</c:if>
									<c:if test="${not img.first}">
										<a class="mr-12" href="#pro-details${img.index}"
											data-toggle="tab" role="tab" aria-selected="true"> <img
											style="width: 110px;"
											src="<c:url value="/assets/user/img/product/${idProduct}/${image}"/>"
											alt="">
										</a>
									</c:if>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12 col-lg-5 col-12">
					<div class="product-details-content">
						<h3>${productDetail.name}</h3>
						<div class="rating-number">
							<div class="quick-view-rating">
								<i class="pe-7s-star red-star"></i> <i
									class="pe-7s-star red-star"></i> <i class="pe-7s-star"></i> <i
									class="pe-7s-star"></i> <i class="pe-7s-star"></i>
							</div>
							<div class="quick-view-number">
								<span>2 Ratting (S)</span>
							</div>
						</div>
						<div class="details-price">
							<c:if test="${productDetail.sale !=0}">
								<div class="old-price">
									<span style="text-decoration: line-through;"><fmt:formatNumber
											type="number" groupingUsed="true"
											value="${ productDetail.price }" /> ₫</span>
								</div>
								<span><fmt:formatNumber type="number" groupingUsed="true"
										value="${ productDetail.price * (100-productDetail.sale)/100}" />
									₫</span>
							</c:if>
							<c:if test="${productDetail.sale ==0}">
								<span><fmt:formatNumber type="number" groupingUsed="true"
										value="${productDetail.price}" /> ₫</span>
							</c:if>
						</div>
						<form:form action="AddCart/${ productDetail.id }" method="post"
							modelAttribute="cart">
							<div class="quick-view-select">
								<div class="select-option-part">
									<label>Kích thước*</label>
									<form:select class="size" name="size" id="size" path="size">
										<form:option value="">- Vui lòng chọn kích thước -</form:option>
										<form:options items="${sizes}"></form:options>
									</form:select>
								</div>
								<div class="select-option-part">
									<label>Màu*</label>
									<form:select class="color" name="color" id="color" path="color">
										<form:option value="">- Vui lòng chọn màu -</form:option>
										<form:options items="${colors}"></form:options>
									</form:select>

								</div>
							</div>
							<div class="quickview-plus-minus">
								<div class="cart-plus-minus">
									<input type="text" value="1" name="qtybutton"
										class="cart-plus-minus-box">
								</div>
								<div class="quickview-btn-cart">
									<input type="submit"
										class="btn btn-outline-dark btn-lg font-weight-bold"
										value="THÊM VÀO GIỎ HÀNG"
										style="height: 48px; font-size: 18px;">
								</div>
								<div class="quickview-btn-wishlist">
									<a class="btn-hover" href="#"><i class="pe-7s-like"></i></a>
								</div>
							</div>
						</form:form>
						</br>
						<div class="product-share">
							<ul>
								<li class="categories-title">Share :</li>
								<li><a href="#"> <i
										class="icofont icofont-social-facebook"></i>
								</a></li>
								<li><a href="#"> <i
										class="icofont icofont-social-twitter"></i>
								</a></li>
								<li><a href="#"> <i
										class="icofont icofont-social-pinterest"></i>
								</a></li>
								<li><a href="#"> <i
										class="icofont icofont-social-flikr"></i>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Mô tả -->
	<div class="product-description-review-area pb-90">
		<div class="container">
			<div class="product-description-review text-center">
				<div class="description-review-title nav" role=tablist>
					<a class="active" href="#pro-dec" data-toggle="tab" role="tab"
						aria-selected="true"> Mô tả </a> <a href="#pro-review"
						data-toggle="tab" role="tab" aria-selected="false"> Nhận xét
						(0) </a>
				</div>
				<div class="description-review-text tab-content">
					<div class="tab-pane active show fade" id="pro-dec" role="tabpanel">
						<p>${productDetail.decriptions}</p>
					</div>
					<div class="tab-pane fade" id="pro-review" role="tabpanel">
						<a href="#">Hãy là người đầu tiên viết đánh giá của bạn!</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Related Products -->
	<div class="product-area pb-95">
		<div class="container">
			<div class="section-title-3 text-center mb-50">
				<h2>Sản phẩm liên quan</h2>
			</div>
			<div class="product-style">
				<div class="related-product-active owl-carousel">
					<div class="product-wrapper">
						<div class="product-img">
							<a href="#"> <img
								src="assets/img/product/fashion-colorful/1.jpg" alt="">
							</a> <span>hot</span>
							<div class="product-action">
								<a class="animate-left" title="Wishlist" href="#"> <i
									class="pe-7s-like"></i>
								</a> <a class="animate-top" title="Add To Cart" href="#"> <i
									class="pe-7s-cart"></i>
								</a> <a class="animate-right" title="Quick View" data-toggle="modal"
									data-target="#exampleModal" href="#"> <i class="pe-7s-look"></i>
								</a>
							</div>
						</div>
						<div class="product-content">
							<h4>
								<a href="#">Arifo Stylas Dress</a>
							</h4>
							<span>$115.00</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>