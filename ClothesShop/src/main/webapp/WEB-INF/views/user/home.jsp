<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<title>Shop quần áo - Trang chủ</title>
<body>
	<!-- slide -->
	<div class="slider-area">
        <div class="slider-active owl-carousel">
            <div class="single-slider single-slider-book1 bg-img"
                style="background-image: url(<c:url value="/assets/user/img/slider/slide1.jpg"></c:url>)">
                <div class="container">
                    <div class="slider-animation slider-content-book fadeinup-animated">
                        <h1 class="animated"><span>Knowledge</span> is</h1>
                        <h2 class="animated">Power.</h2>
                        <p class="animated">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                        </p>
                        <a href="shop.html">More Books</a>
                    </div>
                </div>
            </div>
            <div class="single-slider single-slider-book1 bg-img"
                style="background-image: url(<c:url value="/assets/user/img/slider/slide2.jpg"></c:url>)">
                <div class="container">
                    <div class="slider-animation slider-content-book fadeinup-animated">
                        <h1 class="animated"><span>Knowledge</span> is</h1>
                        <h2 class="animated">Power.</h2>
                        <p class="animated">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                        </p>
                        <a href="shop.html">More Books</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<!-- best product area start -->
	<div class="best-product-area pb-15 best-1">
		<div style="height: 35px"></div>
		<div class="pl-100 pr-100">
			<div class="container-fluid">
				<div class="section-title-3 text-center mb-40">
					<h2>Sản phẩm nổi bật</h2>
				</div>
				<div class="best-product-style">
					<div
						class="product-tab-list2 text-center mb-95 nav product-menu-mrg"
						role="tablist">
						<c:forEach var="category" items="${listCategory}"
							varStatus="index">
							<c:if test="${index.first}">
								<a class="active" href="#home${category.id}" data-toggle="tab"
									role="tab">
							</c:if>
							<c:if test="${not index.first}">
								<a href="#home${category.id}" data-toggle="tab" role="tab">
							</c:if>
							<h4>${category.name}</h4>
							</a>
						</c:forEach>
					</div>

					<div class="tab-content">
						<c:forEach var="category" items="${listCategory}"
							varStatus="index">
							<c:if test="${index.first}">
								<div class="tab-pane active show fade" id="home${category.id}"
									role="tabpanel">
									<div class="custom-row">
										<c:forEach var="product" items="${listProduct}">
											<c:if test="${product.category.id==category.id}">
												<div class="custom-col-5 custom-col-style mb-95">
													<div class="product-wrapper">
														<div class="product-img-2">
															<c:forEach var="color" items="${product.colors}"
																varStatus="index">
																<c:if
																	test="${color.product.id == product.id && index.first}">
																	<a href="detail-products/${color.product.id}"> <c:forEach
																			var="img" items="${color.image}" varStatus="index">
																			<c:if test="${index.first}">
																				<img
																					src="<c:url value="/assets/user/img/product/${product.id}/${img}"/>"
																					alt="">
																			</c:if>
																		</c:forEach>
																	</a>
																</c:if>
															</c:forEach>
															<div class="product-action-2">
																<a class="animate-left add-style-2" title="Add To Cart"
																	href="#">Add to Cart <i class="ti-shopping-cart"></i></a>
																<a class="animate-right wishlist-style-2"
																	title="wishlist" href="#"> <i class="ti-heart"></i>
																</a>
															</div>
														</div>
														<div class="product-content-2 text-center">
															<h4>
																<a href="product-details.html">${product.name}</a>
															</h4>
															<div class="product-rating">
																<i class="ti-star black"></i> <i class="ti-star black"></i>
																<i class="ti-star black"></i> <i class="ti-star"></i> <i
																	class="ti-star"></i>
															</div>
														</div>
													</div>
												</div>
											</c:if>
										</c:forEach>
									</div>
								</div>
							</c:if>

							<c:if test="${not index.first}">
								<div class="tab-pane fade" id="home${category.id}"
									role="tabpanel">
									<div class="custom-row">
										<c:forEach var="product" items="${listProduct}">
											<c:if test="${product.category.id==category.id}">
												<div class="custom-col-5 custom-col-style mb-95">
													<div class="product-wrapper">
														<div class="product-img-2">
															<c:forEach var="color" items="${product.colors}"
																varStatus="index">
																<c:if
																	test="${color.product.id == product.id && index.first}">
																	<a href="detail-products/${color.product.id}"> <c:forEach
																			var="img" items="${color.image}" varStatus="index">
																			<c:if test="${index.first}">
																				<img
																					src="<c:url value="/assets/user/img/product/${product.id}/${img}"/>"
																					alt="">
																			</c:if>
																		</c:forEach>
																	</a>
																</c:if>
															</c:forEach>
															<div class="product-action-2">
																<a class="animate-left add-style-2" title="Add To Cart"
																	href="#">Add to Cart <i class="ti-shopping-cart"></i></a>
																<a class="animate-right wishlist-style-2"
																	title="wishlist" href="#"> <i class="ti-heart"></i>
																</a>
															</div>
														</div>
														<div class="product-content-2 text-center">
															<h4>
																<a href="product-details.html">${product.name}</a>
															</h4>
															<div class="product-rating">
																<i class="ti-star black"></i> <i class="ti-star black"></i>
																<i class="ti-star black"></i> <i class="ti-star"></i> <i
																	class="ti-star"></i>
															</div>
														</div>
													</div>
												</div>
											</c:if>
										</c:forEach>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- best product area end -->

	<!-- discount area start -->
	<div class="discount-area pr-205 gray-bg-4 pt-115 pb-90">
		<div class="discount-left text-center" style="padding-left: 50px">
			<img class="tilter"
				src="<c:url value="/assets/user/img/product/newProduct.jpg"/>"
				alt="">
			<h4 style="padding-top: 30px">Giảm giá 50%</h4>
			<a href="#">Mua ngay</a>
		</div>
		<div class="discount-right gray-bg-4">
			<div class="row no-gutters">
				<div style="padding-left: 100px">
					<div class="new-top mr-15">
						<h3 class="new-top-title">Sản phẩm mới nhất</h3>
						<c:if test="${ listProduct.size() > 0 }">
							<ul class="thumbnails">
								<c:forEach var="product" items="${ listProduct }"
									varStatus="loop">
									<c:if test="${ (loop.index + 1) < 4 }">
										<li class="span4">
											<div class="new-top-product">
												<div class="new-top-wrapper mb-50">
													<div class="new-top-img">
														<c:forEach var="color" items="${product.colors}"
															varStatus="index">
															<c:if
																test="${color.product.id == product.id && index.first}">
																<a href="detail-products/${color.product.id}"> <c:forEach
																		var="img" items="${color.image}" varStatus="index">
																		<c:if test="${index.first}">
																			<img style="width: 180px"
																				src="<c:url value="/assets/user/img/product/${product.id}/${img}"/>"
																				alt="">
																		</c:if>
																	</c:forEach>
																</a>
															</c:if>
														</c:forEach>
														<div class="discount-book-cart">
															<a class="animate-left add-style-2" href="#"
																title="Add To Cart"> <i class="ti-shopping-cart"></i>
															</a>
														</div>
													</div>
													<div class="new-top-content">
														<h4>
															<a href="product-details.html">${product.name}</a>
														</h4>
														<div class="product-price">
															<div class="new-price">
																<span><fmt:formatNumber type="number"
																		groupingUsed="true" value="${ product.price }" /> ₫</span>
															</div>
														</div>
														<div class="product-rating-3">
															<i class="pe-7s-star"></i> <i class="pe-7s-star"></i> <i
																class="pe-7s-star"></i> <i class="pe-7s-star"></i> <i
																class="pe-7s-star"></i>
														</div>
													</div>
												</div>
											</div>
										</li>
									</c:if>
								</c:forEach>
							</ul>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- discount area end -->
	<!-- blog area start -->
	<div class="blog-area pt-120 pb-80">
		<div class="container">
			<div class="section-title-3 text-center mb-50">
				<h2>From Our Blog</h2>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="blog-wrapper mb-40">
						<div class="blog-img blog-hover">
							<a href="blog-details-sidebar.html"><img
								src="assets/user/img/blog/1.jpg" alt=""></a>
						</div>
						<div class="blog-info">
							<h4>
								<a href="blog-details-sidebar.html">Bangla Academy Book
									fair.</a>
							</h4>
							<span>February 13, 2017</span>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="blog-wrapper mb-40">
						<div class="blog-img blog-hover">
							<a href="blog-details-sidebar.html"><img
								src="assets/user/img/blog/2.jpg" alt=""></a>
						</div>
						<div class="blog-info">
							<h4>
								<a href="blog-details-sidebar.html">Bangla New Book Shop.</a>
							</h4>
							<span>February 13, 2017</span>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="blog-wrapper mb-40">
						<div class="blog-img blog-hover">
							<a href="blog-details-sidebar.html"><img
								src="assets/user/img/blog/3.jpg" alt=""></a>
						</div>
						<div class="blog-info">
							<h4>
								<a href="blog-details-sidebar.html">Latest Book Collection
									2018.</a>
							</h4>
							<span>February 13, 2017</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- blog area end -->
</body>