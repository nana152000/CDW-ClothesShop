<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<title>Shop quần áo - Sản phẩm</title>
<body>
	<!-- banner  -->
	<div class="breadcrumb-area pt-205 breadcrumb-padding pb-210"
		style="background-image: url(<c:url value="/assets/user/img/bg/breadcrumb.jpg"></c:url>)">
		<div class="container-fluid">
			<div class="breadcrumb-content text-center">
				<h2>Shop quần áo</h2>
				<ul>
					<li><a href="<c:url value="/trang-chu"/>">Trang chủ</a></li>
					<li>Sản phẩm</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- body -->
	<div class="shop-page-wrapper shop-page-padding ptb-100">
		<div class="container-fluid" style="padding: 0 150px">
			<div class="row">
				<div class="col-lg-12">
					<%-- <c:forEach var="category" items="${categories}">
						<c:if test=""> --%>
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
										<div class="sidebar-search"
											style="position: relative; top: -12px">
											<form action="#">
												<input placeholder="Search Products..." type="text">
												<button>
													<i class="ti-search"></i>
												</button>
											</form>
										</div>
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
												items="${ listProductPaging }" varStatus="loop">
												<div class="col-lg-6 col-md-6 col-xl-3">
													<div class="product-wrapper mb-30">
														<div class="product-img">
															<a href="#"> <%-- <c:forEach var="img"
																	items="${productPaginate.image}" varStatus="index">
																	<c:if test="${index.first}">
																		<img
																			src="<c:url value="/assets/user/img/product/${productPaginate.id}/${img}"/>"
																			alt="">
																	</c:if>
																</c:forEach> --%>
															</a> <span>hot</span>
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
																	groupingUsed="true" value="${productPaginate.price}" />
																₫</span>
														</div>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
								</c:if>
								<div id="grid-sidebar2" class="tab-pane fade">
									<div class="row">
										<c:forEach var="productPaginate"
											items="${ listProductPaging }" varStatus="loop">
											<div class="col-lg-12 col-xl-6">
												<div
													class="product-wrapper mb-30 single-product-list product-list-right-pr mb-60">
													<div class="product-img list-img-width">
														<a href="#"> <%-- <c:forEach var="img"
																items="${productPaginate.image}" varStatus="index">
																<c:if test="${index.first}">
																	<img
																		src="<c:url value="/assets/user/img/product/${productPaginate.id_product}/${img}"/>"
																		alt="">
																</c:if>
															</c:forEach> --%>
														</a> <span>hot</span>
														<div class="product-action-list-style">
															<a class="animate-right" title="Quick View"
																data-toggle="modal" data-target="#exampleModal" href="#">
																<i class="pe-7s-look"></i>
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
							</div>

						</div>
					</div>
					<%-- 	</c:if>
					</c:forEach> --%>
					<div class="pagination">
						<a
							href="<c:url value='/san-pham/page=${currentPage - 1}'></c:url>">
							<c:if test="${currentPage > 1}">
								Previous
								</c:if> <c:if test="${currentPage <= 1}">
								Previous
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
						<a
							href="<c:url value='/san-pham/page=${currentPage + 1}'></c:url>">
							<c:if test="${currentPage < totalPages}">
								Next
								</c:if> <c:if test="${currentPage >= totalPages}">
								Next
								</c:if>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>