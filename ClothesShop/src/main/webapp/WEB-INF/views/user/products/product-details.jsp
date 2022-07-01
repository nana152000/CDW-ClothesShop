<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop quần áo - Chi tiết sản phẩm</title>
</head>
<body>
	<!-- banner  -->
	<div class="breadcrumb-area pt-205 pb-210"
		style="background-image: url(<c:url value='/assets/user/img/bg/breadcrumb.jpg'></c:url>)">
		<div class="container">
			<div class="breadcrumb-content text-center">
				<h2>Chi tiết sản phẩm</h2>
				<ul>
					<li><a href="<c:url value='/trang-chu'/>">Trang chủ</a></li>
					<li>Sản phẩm</li>
					<li>Chi tiết sản phẩm</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- product detail -->
	<div class="product-details ptb-100 pb-90">
		<div class="container">
			<div class="row">
				<%-- <div class="col-md-12 col-lg-7 col-12">
					<div class="product-details-img-content">
						<div class="product-details-tab mr-70">
							<div class="product-details-large tab-content">
								<c:forEach var="color" items="${productDetail.colors}"
									varStatus="index">
									<c:if test="${index.first}">
										<c:forEach var="img" items="${color.image}">
											<div class="tab-pane active show fade" id="pro-details${img}"
												role="tabpanel">
												<div class="easyzoom easyzoom--overlay">
													<a href="assets/img/product-details/bl1.jpg"> <img
														src="<c:url value="/assets/user/img/product/${color.product.id}/${img}"/>"
														alt="">
													</a>
												</div>
											</div>
										</c:forEach>
									</c:if>
									<c:if test="${not index.first}">
										<c:forEach var="img" items="${color.image}">
											<div class="tab-pane fade" id="pro-details${img}"
												role="tabpanel">
												<div class="easyzoom easyzoom--overlay">
													<a href="assets/img/product-details/bl2.jpg"> <img
														src="<c:url value="/assets/user/img/product/${color.product.id}/${img}"/>"
														alt="">
													</a>
												</div>
											</div>
										</c:forEach>
									</c:if>
								</c:forEach>
							</div>
							<div class="product-details-small nav mt-12" role=tablist>
								<c:forEach var="color" items="${productDetail.colors}"
									varStatus="index">
									<c:if test="${index.first}">
										<c:forEach var="img" items="${color.image}">
											<a class="active mr-12" href="#pro-details${img}"
												data-toggle="tab" role="tab" aria-selected="true"> <img
												src="<c:url value="/assets/user/img/product/${color.product.id}/${img}"/>"
												alt="">
											</a>
										</c:forEach>
									</c:if>
									<c:if test="${not index.first}">
										<c:forEach var="img" items="${color.image}">
											<a class="active mr-12" href="#pro-details${img}"
												data-toggle="tab" role="tab" aria-selected="true"> <img
												src="<c:url value="/assets/user/img/product/${color.product.id}/${img}"/>"
												alt="">
											</a>
										</c:forEach>
									</c:if>
								</c:forEach>
							</div>
						</div>
					</div>
				</div> --%>
				<div class="col-md-12 col-lg-7 col-12">
                        <div class="product-details-img-content">
                            <div class="product-details-tab mr-70">
                                <div class="product-details-large tab-content">
                                    <div class="tab-pane active show fade" id="pro-details1" role="tabpanel">
                                        <div class="easyzoom easyzoom--overlay">
                                            <a href="<c:url value='/assets/user/img/product-details/bl1.jpg'/>">
                                                <img src="<c:url value='assets/user/img/product-details/l1.jpg'/>" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="pro-details2" role="tabpanel">
                                        <div class="easyzoom easyzoom--overlay">
                                            <a href="<c:url value='/assets/user/img/product-details/bl2.jpg'/>">
                                                <img src="<c:url value='assets/user/img/product-details/l2.jpg'/>" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="pro-details3" role="tabpanel">
                                        <div class="easyzoom easyzoom--overlay">
                                            <a href="<c:url value='/assets/user/img/product-details/bl3.jpg'/>">
                                                <img src="<c:url value='/assets/user/img/product-details/l3.jpg'/>" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="pro-details4" role="tabpanel">
                                        <div class="easyzoom easyzoom--overlay">
                                            <a href="<c:url value='/assets/user/img/product-details/bl4.jpg'/>">
                                                <img src="<c:url value='/assets/user/img/product-details/l4.jpg'/>" alt="">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-details-small nav mt-12" role=tablist>
                                    <a class="active mr-12" href="#pro-details1" data-toggle="tab" role="tab" aria-selected="true">
                                        <img src="<c:url value='/assets/user/img/product-details/s1.jpg'/>" alt="">
                                    </a>
                                    <a class="mr-12" href="#pro-details2" data-toggle="tab" role="tab" aria-selected="true">
                                        <img src="<c:url value='/assets/user/img/product-details/s2.jpg'/>" alt="">
                                    </a>
                                    <a class="mr-12" href="#pro-details3" data-toggle="tab" role="tab" aria-selected="true">
                                        <img src="<c:url value='/assets/user/img/product-details/s3.jpg'/>" alt="">
                                    </a>
                                    <a class="mr-12" href="#pro-details4" data-toggle="tab" role="tab" aria-selected="true">
                                        <img src="<c:url value='/assets/user/img/product-details/s4.jpg'/>" alt="">
                                    </a>
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
							<span><fmt:formatNumber type="number" groupingUsed="true"
									value="${productDetail.price}" /> &nbsp;vnđ</span>
						</div>
						<div class="quick-view-select">
							<div class="select-option-part">
								<label>Size*</label> <select class="sizes">
									<option value="">- Please Select -</option>
									<c:forEach var="size" items="${productDetail.sizes}">
										<option value="${size}">${size}</option>
									</c:forEach>
								</select>
							</div>
							<div class="select-option-part">
								<label>Color*</label> <select class="select">
									<option value="">- Please Select -</option>
									<c:forEach var="color" items="${productDetail.colors}">
										<option value="${color.id}">${color.name_color}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="quickview-plus-minus">
							<div class="cart-plus-minus">
								<input type="text" value="02" name="qtybutton"
									class="cart-plus-minus-box">
							</div>
							<div class="quickview-btn-cart">
								<a class="btn-hover-black" href="#">add to cart</a>
							</div>
							<div class="quickview-btn-wishlist">
								<a class="btn-hover" href="#"><i class="pe-7s-like"></i></a>
							</div>
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
					<div class="product-wrapper">
						<div class="product-img">
							<a href="#"> <img
								src="assets/img/product/fashion-colorful/2.jpg" alt="">
							</a>
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
					<div class="product-wrapper">
						<div class="product-img">
							<a href="#"> <img
								src="assets/img/product/fashion-colorful/3.jpg" alt="">
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
					<div class="product-wrapper">
						<div class="product-img">
							<a href="#"> <img
								src="assets/img/product/fashion-colorful/4.jpg" alt="">
							</a>
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
					<div class="product-wrapper">
						<div class="product-img">
							<a href="#"> <img
								src="assets/img/product/fashion-colorful/5.jpg" alt="">
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
					<div class="product-wrapper">
						<div class="product-img">
							<a href="#"> <img
								src="assets/img/product/fashion-colorful/1.jpg" alt="">
							</a>
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
					<div class="product-wrapper">
						<div class="product-img">
							<a href="#"> <img
								src="assets/img/product/fashion-colorful/2.jpg" alt="">
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