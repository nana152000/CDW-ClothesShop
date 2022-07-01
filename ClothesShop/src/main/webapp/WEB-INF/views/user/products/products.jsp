<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<title>Shop quần áo - Sản phẩm</title>
<body>
	<div class="breadcrumb-area pt-205 breadcrumb-padding pb-210"
		style="background-image: url(<c:url value='/assets/user/img/bg/breadcrumb.jpg'></c:url>)">
		<div class="container-fluid">
			<div class="breadcrumb-content text-center">
				<h2>Shop quần áo</h2>
				<ul>
					<li><a href="<c:url value='/trang-chu'/>">Trang chủ</a></li>
					<li>Sản phẩm</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="shop-page-wrapper shop-page-padding ptb-100">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3">
					<div class="shop-sidebar mr-50">
						<div class="sidebar-widget mb-50">
							<h3 class="sidebar-title">Tìm kiếm sản phẩm</h3>
							<div class="sidebar-search">
								<form action="#">
									<input placeholder="Search Products..." type="text">
									<button>
										<i class="ti-search"></i>
									</button>
								</form>
							</div>
						</div>
						<div class="sidebar-widget mb-45">
							<h3 class="sidebar-title">Loại sản phẩm</h3>
							<div class="sidebar-categories">
								<ul>
									<c:forEach var="category" items="${ listCategory }">
										<li><a href="#">${category.name} <c:forEach
													var="product" items="${ listProduct }">
													<c:if test="${product.category.id == category.id }">
														<span>4</span>
													</c:if>
												</c:forEach>
										</a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
						<div class="sidebar-widget mb-50">
							<h3 class="sidebar-title">Sản phẩm nổi bật</h3>
							<div class="sidebar-top-rated-all">
								<div class="sidebar-top-rated mb-30">
									<div class="single-top-rated">
										<div class="top-rated-img">
											<a href="#"><img
												src="assets/img/product/sidebar-product/1.jpg"
												class="img-sidebar_product" alt=""></a>
										</div>
										<div class="top-rated-text">
											<h4>
												<a href="#">Flying Drone</a>
											</h4>
											<div class="top-rated-rating">
												<ul>
													<li><i class="pe-7s-star"></i></li>
													<li><i class="pe-7s-star"></i></li>
													<li><i class="pe-7s-star"></i></li>
													<li><i class="pe-7s-star"></i></li>
													<li><i class="pe-7s-star"></i></li>
												</ul>
											</div>
											<span>$140.00</span>
										</div>
									</div>
								</div>
								<div class="sidebar-top-rated mb-30">
									<div class="single-top-rated">
										<div class="top-rated-img">
											<a href="#"><img
												src="assets/img/product/sidebar-product/2.jpg"
												class="img-sidebar_product" alt=""></a>
										</div>
										<div class="top-rated-text">
											<h4>
												<a href="#">Flying Drone</a>
											</h4>
											<div class="top-rated-rating">
												<ul>
													<li><i class="pe-7s-star"></i></li>
													<li><i class="pe-7s-star"></i></li>
													<li><i class="pe-7s-star"></i></li>
													<li><i class="pe-7s-star"></i></li>
													<li><i class="pe-7s-star"></i></li>
												</ul>
											</div>
											<span>$140.00</span>
										</div>
									</div>
								</div>
								<div class="sidebar-top-rated mb-30">
									<div class="single-top-rated">
										<div class="top-rated-img">
											<a href="#"><img
												src="assets/img/product/sidebar-product/3.jpg"
												class="img-sidebar_product" alt=""></a>
										</div>
										<div class="top-rated-text">
											<h4>
												<a href="#">Flying Drone</a>
											</h4>
											<div class="top-rated-rating">
												<ul>
													<li><i class="pe-7s-star"></i></li>
													<li><i class="pe-7s-star"></i></li>
													<li><i class="pe-7s-star"></i></li>
													<li><i class="pe-7s-star"></i></li>
													<li><i class="pe-7s-star"></i></li>
												</ul>
											</div>
											<span>$140.00</span>
										</div>
									</div>
								</div>
								<div class="sidebar-top-rated mb-30">
									<div class="single-top-rated">
										<div class="top-rated-img">
											<a href="#"><img
												src="assets/img/product/sidebar-product/4.jpg"
												class="img-sidebar_product" alt=""></a>
										</div>
										<div class="top-rated-text">
											<h4>
												<a href="#">Flying Drone</a>
											</h4>
											<div class="top-rated-rating">
												<ul>
													<li><i class="pe-7s-star"></i></li>
													<li><i class="pe-7s-star"></i></li>
													<li><i class="pe-7s-star"></i></li>
													<li><i class="pe-7s-star"></i></li>
													<li><i class="pe-7s-star"></i></li>
												</ul>
											</div>
											<span>$140.00</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="shop-product-wrapper res-xl res-xl-btn">
						<div class="shop-bar-area">
							<div class="shop-bar pb-60">
								<div class="shop-found-selector">
									<div class="shop-found">
										<p>
											<span>${totalItems}</span> sản phẩm trong tổng <span>${listProduct.size()}</span>
										</p>
									</div>
									<div class="shop-selector">
										<label>Sắp xếp : </label> <select name="select">
											<option value="">Mặc định</option>
											<option value="">A to Z</option>
											<option value="">Z to A</option>
										</select>
									</div>
								</div>
								<div class="shop-filter-tab">
									<div class="shop-tab nav" role=tablist>
										<a class="active" href="#grid-sidebar1" data-toggle="tab"
											role="tab" aria-selected="false"> <i
											class="ti-layout-grid4-alt"></i>
										</a> <a href="#grid-sidebar2" data-toggle="tab" role="tab"
											aria-selected="true"> <i class="ti-menu"></i>
										</a>
									</div>
								</div>
							</div>
							<div class="shop-product-content tab-content">
								<c:if test="${totalItems > 0 }">
									<div id="grid-sidebar1" class="tab-pane fade active show">
										<div class="row">
											<c:forEach var="productPaginate"
												items="${ listProductPaging }">
												<div class="col-lg-6 col-md-6 col-xl-3">
													<div class="product-wrapper mb-30">
														<div class="product-img">
															<c:forEach var="color" items="${productPaginate.colors}"
																varStatus="index">
																<c:if
																	test="${color.product.id == productPaginate.id && index.first}">
																	<a href="<c:url value='/san-pham/${color.product.id}'></c:url>"> <c:forEach
																			var="img" items="${color.image}" varStatus="index">
																			<c:if test="${index.first}">
																				<img
																					src="<c:url value="/assets/user/img/product/${productPaginate.id}/${img}"/>"
																					alt="">
																			</c:if>
																		</c:forEach>
																	</a>
																</c:if>
															</c:forEach>
															<span>hot</span>
															<div class="product-action">
																<a class="animate-left" title="Wishlist" href="#"> <i
																	class="pe-7s-like"></i>
																</a> <a class="animate-top" title="Add To Cart" href="#">
																	<i class="pe-7s-cart"></i>
																</a> <a class="animate-right" title="Quick View"
																	data-toggle="modal" data-target="#exampleModal"
																	href="#"> <i class="pe-7s-look"></i>
																</a>
															</div>
														</div>
														<div class="product-content">
															<h4>
																<a href="#">${productPaginate.name} </a>
															</h4>
															<span><fmt:formatNumber type="number"
																	groupingUsed="true" value="${productPaginate.price}" /> &nbsp;vnđ</span>
														</div>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
									<div id="grid-sidebar2" class="tab-pane fade">
										<div class="row">
											<c:forEach var="productPaginate"
												items="${ listProductPaging }">
												<div class="col-lg-12 col-xl-6">
													<div
														class="product-wrapper mb-30 single-product-list product-list-right-pr mb-60">
														<div class="product-img list-img-width">
															<c:forEach var="color" items="${productPaginate.colors}"
																varStatus="index">
																<c:if
																	test="${color.product.id == productPaginate.id && index.first}">
																	<a href="detail-products/${color.product.id}"> <c:forEach
																			var="img" items="${color.image}" varStatus="index">
																			<c:if test="${index.first}">
																				<img
																					src="<c:url value="/assets/user/img/product/${productPaginate.id}/${img}"/>"
																					alt="">
																			</c:if>
																		</c:forEach>
																	</a>
																</c:if>
															</c:forEach>
															<span>hot</span>
															<div class="product-action-list-style">
																<a class="animate-right" title="Quick View"
																	data-toggle="modal" data-target="#exampleModal"
																	href="#"> <i class="pe-7s-look"></i>
																</a>
															</div>
														</div>
														<div class="product-content-list">
															<div class="product-list-info">
																<h4>
																	<a href="#">${productPaginate.name} </a>
																</h4>
																<span><fmt:formatNumber type="number"
																		groupingUsed="true" value="${productPaginate.price}" /></span>
															</div>
															<div class="product-list-cart-wishlist">
																<div class="product-list-cart">
																	<a class="btn-hover list-btn-style" href="#">add to
																		cart</a>
																</div>
																<div class="product-list-wishlist">
																	<a class="btn-hover list-btn-wishlist" href="#"> <i
																		class="pe-7s-like"></i>
																	</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="pagination">
				<a href="<c:url value='/san-pham/page=${currentPage - 1}'></c:url>">
					<c:if test="${currentPage > 1}">
								<
								</c:if> <c:if test="${currentPage <= 1}">
								<
								</c:if>
				</a>
				<c:forEach var="item" begin="1" end="${ totalPages }"
					varStatus="loop">
					<c:if test="${ (loop.index) == currentPage }">
						<a href="<c:url value="/san-pham/page=${ loop.index }"/>"
							class="active">${ loop.index }</a>
					</c:if>
					<c:if test="${ (loop.index) != currentPage }">
						<a href="<c:url value="/san-pham/page=${ loop.index }"/>">${ loop.index }</a>
					</c:if>
				</c:forEach>
				<a href="<c:url value='/san-pham/page=${currentPage + 1}'></c:url>">
					<c:if test="${currentPage < totalPages}">
								>
								</c:if> <c:if test="${currentPage >= totalPages}">
								>
								</c:if>
				</a>
			</div>
		</div>
	</div>

</body>
