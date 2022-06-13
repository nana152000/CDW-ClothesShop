<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Shop quần áo - Sản phẩm</title>
<body>
	<!-- banner  -->
	<div class="breadcrumb-area pt-205 breadcrumb-padding pb-210"
		style="background-image: url(<c:url value="/assets/user/img/bg/breadcrumb.jpg"></c:url>)">
		<div class="container-fluid">
			<div class="breadcrumb-content text-center">
				<h2>shop grid</h2>
				<ul>
					<li><a href="index.html">home</a></li>
					<li>shop grid</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- body -->
	<div class="shop-page-wrapper shop-page-padding ptb-100">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3">
					<div class="shop-sidebar mr-50">
						<div class="sidebar-widget mb-50">
							<h3 class="sidebar-title">Tìm kiếm</h3>
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
							<h3 class="sidebar-title">Sản phẩm</h3>
							<div class="sidebar-categories">
								<ul>
									<c:forEach var="category" items="${categories}">
										<li><a
											href='<c:url value="/san-pham/${category.id}"></c:url>'>${category.name}
												<span>4</span>
										</a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
						<div class="sidebar-widget sidebar-overflow mb-45">
							<h3 class="sidebar-title">Màu</h3>
							<div class="product-color">
								<ul>
									<li class="red">b</li>
									<li class="white">p</li>
									<li class="blue">b</li>
									<li class="sky">b</li>
									<li class="green">y</li>
									<li class="purple">g</li>
								</ul>
							</div>
						</div>


						<div class="sidebar-widget mb-50">
							<h3 class="sidebar-title">Sản phẩm hot nhất</h3>
							<div class="sidebar-top-rated-all">
								<div class="sidebar-top-rated mb-30">
									<div class="single-top-rated">
										<div class="top-rated-img">
											<a href="#"><img
												src='<c:url value="/assets/user/img/product/sidebar-product/1.jpg"></c:url>'
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
											<span>23</span> Product Found of <span>50</span>
										</p>
									</div>
									<div class="shop-selector">
										<label>Sort By : </label> <select name="select">
											<option value="">Default</option>
											<option value="">A to Z</option>
											<option value="">Z to A</option>
											<option value="">In stock</option>
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
								<div id="grid-sidebar1" class="tab-pane fade active show">
									<div class="row">
										<div class="col-lg-6 col-md-6 col-xl-3">
											<div class="product-wrapper mb-30">
												<div class="product-img">
													<a href="#"> <img
														src="assets/img/product/fashion-colorful/1.jpg" alt="">
													</a> <span>hot</span>
													<div class="product-action">
														<a class="animate-left" title="Wishlist" href="#"> <i
															class="pe-7s-like"></i>
														</a> <a class="animate-top" title="Add To Cart" href="#">
															<i class="pe-7s-cart"></i>
														</a> <a class="animate-right" title="Quick View"
															data-toggle="modal" data-target="#exampleModal" href="#">
															<i class="pe-7s-look"></i>
														</a>
													</div>
												</div>
												<div class="product-content">
													<h4>
														<a href="#">Homme Tapered Smart </a>
													</h4>
													<span>$115.00</span>
												</div>
											</div>
										</div>
										<div class="col-lg-6 col-md-6 col-xl-3">
											<div class="product-wrapper mb-30">
												<div class="product-img">
													<a href="#"> <img
														src="assets/img/product/fashion-colorful/2.jpg" alt="">
													</a>
													<div class="product-action">
														<a class="animate-left" title="Wishlist" href="#"> <i
															class="pe-7s-like"></i>
														</a> <a class="animate-top" title="Add To Cart" href="#">
															<i class="pe-7s-cart"></i>
														</a> <a class="animate-right" title="Quick View"
															data-toggle="modal" data-target="#exampleModal" href="#">
															<i class="pe-7s-look"></i>
														</a>
													</div>
												</div>
												<div class="product-content">
													<h4>
														<a href="#">Denim Stonewash</a>
													</h4>
													<span>$115.00</span>
												</div>
											</div>
										</div>
										<div class="col-lg-6 col-md-6 col-xl-3">
											<div class="product-wrapper mb-30">
												<div class="product-img">
													<a href="#"> <img
														src="assets/img/product/fashion-colorful/3.jpg" alt="">
													</a> <span>new</span>
													<div class="product-action">
														<a class="animate-left" title="Wishlist" href="#"> <i
															class="pe-7s-like"></i>
														</a> <a class="animate-top" title="Add To Cart" href="#">
															<i class="pe-7s-cart"></i>
														</a> <a class="animate-right" title="Quick View"
															data-toggle="modal" data-target="#exampleModal" href="#">
															<i class="pe-7s-look"></i>
														</a>
													</div>
												</div>
												<div class="product-content">
													<h4>
														<a href="#">Mini Waffle 5 Pack</a>
													</h4>
													<span>$115.00</span>
												</div>
											</div>
										</div>
										<div class="col-lg-6 col-md-6 col-xl-3">
											<div class="product-wrapper mb-30">
												<div class="product-img">
													<a href="#"> <img
														src="assets/img/product/fashion-colorful/4.jpg" alt="">
													</a>
													<div class="product-action">
														<a class="animate-left" title="Wishlist" href="#"> <i
															class="pe-7s-like"></i>
														</a> <a class="animate-top" title="Add To Cart" href="#">
															<i class="pe-7s-cart"></i>
														</a> <a class="animate-right" title="Quick View"
															data-toggle="modal" data-target="#exampleModal" href="#">
															<i class="pe-7s-look"></i>
														</a>
													</div>
												</div>
												<div class="product-content">
													<h4>
														<a href="#">Dagger Smart Trousers</a>
													</h4>
													<span>$115.00</span>
												</div>
											</div>
										</div>
										<div class="col-lg-6 col-md-6 col-xl-3">
											<div class="product-wrapper mb-30">
												<div class="product-img">
													<a href="#"> <img
														src="assets/img/product/fashion-colorful/4.jpg" alt="">
													</a>
													<div class="product-action">
														<a class="animate-left" title="Wishlist" href="#"> <i
															class="pe-7s-like"></i>
														</a> <a class="animate-top" title="Add To Cart" href="#">
															<i class="pe-7s-cart"></i>
														</a> <a class="animate-right" title="Quick View"
															data-toggle="modal" data-target="#exampleModal" href="#">
															<i class="pe-7s-look"></i>
														</a>
													</div>
												</div>
												<div class="product-content">
													<h4>
														<a href="#">Homme Tapered Smart</a>
													</h4>
													<span>$115.00</span>
												</div>
											</div>
										</div>
										<div class="col-lg-6 col-md-6 col-xl-3">
											<div class="product-wrapper mb-30">
												<div class="product-img">
													<a href="#"> <img
														src="assets/img/product/fashion-colorful/3.jpg" alt="">
													</a> <span>sell</span>
													<div class="product-action">
														<a class="animate-left" title="Wishlist" href="#"> <i
															class="pe-7s-like"></i>
														</a> <a class="animate-top" title="Add To Cart" href="#">
															<i class="pe-7s-cart"></i>
														</a> <a class="animate-right" title="Quick View"
															data-toggle="modal" data-target="#exampleModal" href="#">
															<i class="pe-7s-look"></i>
														</a>
													</div>
												</div>
												<div class="product-content">
													<h4>
														<a href="#">Skinny Jeans Terry</a>
													</h4>
													<span>$115.00</span>
												</div>
											</div>
										</div>
										<div class="col-lg-6 col-md-6 col-xl-3">
											<div class="product-wrapper mb-30">
												<div class="product-img">
													<a href="#"> <img
														src="assets/img/product/fashion-colorful/2.jpg" alt="">
													</a>
													<div class="product-action">
														<a class="animate-left" title="Wishlist" href="#"> <i
															class="pe-7s-like"></i>
														</a> <a class="animate-top" title="Add To Cart" href="#">
															<i class="pe-7s-cart"></i>
														</a> <a class="animate-right" title="Quick View"
															data-toggle="modal" data-target="#exampleModal" href="#">
															<i class="pe-7s-look"></i>
														</a>
													</div>
												</div>
												<div class="product-content">
													<h4>
														<a href="#">Navy Bird Print</a>
													</h4>
													<span>$115.00</span>
												</div>
											</div>
										</div>
										<div class="col-lg-6 col-md-6 col-xl-3">
											<div class="product-wrapper mb-30">
												<div class="product-img">
													<a href="#"> <img
														src="assets/img/product/fashion-colorful/1.jpg" alt="">
													</a> <span>hot</span>
													<div class="product-action">
														<a class="animate-left" title="Wishlist" href="#"> <i
															class="pe-7s-like"></i>
														</a> <a class="animate-top" title="Add To Cart" href="#">
															<i class="pe-7s-cart"></i>
														</a> <a class="animate-right" title="Quick View"
															data-toggle="modal" data-target="#exampleModal" href="#">
															<i class="pe-7s-look"></i>
														</a>
													</div>
												</div>
												<div class="product-content">
													<h4>
														<a href="#">Leg Smart Trousers</a>
													</h4>
													<span>$115.00</span>
												</div>
											</div>
										</div>
										<div class="col-lg-6 col-md-6 col-xl-3">
											<div class="product-wrapper mb-30">
												<div class="product-img">
													<a href="#"> <img
														src="assets/img/product/fashion-colorful/1.jpg" alt="">
													</a>
													<div class="product-action">
														<a class="animate-left" title="Wishlist" href="#"> <i
															class="pe-7s-like"></i>
														</a> <a class="animate-top" title="Add To Cart" href="#">
															<i class="pe-7s-cart"></i>
														</a> <a class="animate-right" title="Quick View"
															data-toggle="modal" data-target="#exampleModal" href="#">
															<i class="pe-7s-look"></i>
														</a>
													</div>
												</div>
												<div class="product-content">
													<h4>
														<a href="#">Black Faux Suede</a>
													</h4>
													<span>$115.00</span>
												</div>
											</div>
										</div>
										<div class="col-lg-6 col-md-6 col-xl-3">
											<div class="product-wrapper mb-30">
												<div class="product-img">
													<a href="#"> <img
														src="assets/img/product/fashion-colorful/2.jpg" alt="">
													</a> <span>new</span>
													<div class="product-action">
														<a class="animate-left" title="Wishlist" href="#"> <i
															class="pe-7s-like"></i>
														</a> <a class="animate-top" title="Add To Cart" href="#">
															<i class="pe-7s-cart"></i>
														</a> <a class="animate-right" title="Quick View"
															data-toggle="modal" data-target="#exampleModal" href="#">
															<i class="pe-7s-look"></i>
														</a>
													</div>
												</div>
												<div class="product-content">
													<h4>
														<a href="#">Homme Tapered Smart </a>
													</h4>
													<span>$115.00</span>
												</div>
											</div>
										</div>
										<div class="col-lg-6 col-md-6 col-xl-3">
											<div class="product-wrapper mb-30">
												<div class="product-img">
													<a href="#"> <img
														src="assets/img/product/fashion-colorful/3.jpg" alt="">
													</a>
													<div class="product-action">
														<a class="animate-left" title="Wishlist" href="#"> <i
															class="pe-7s-like"></i>
														</a> <a class="animate-top" title="Add To Cart" href="#">
															<i class="pe-7s-cart"></i>
														</a> <a class="animate-right" title="Quick View"
															data-toggle="modal" data-target="#exampleModal" href="#">
															<i class="pe-7s-look"></i>
														</a>
													</div>
												</div>
												<div class="product-content">
													<h4>
														<a href="#">Denim Stonewash</a>
													</h4>
													<span>$115.00</span>
												</div>
											</div>
										</div>
										<div class="col-lg-6 col-md-6 col-xl-3">
											<div class="product-wrapper mb-30">
												<div class="product-img">
													<a href="#"> <img
														src="assets/img/product/fashion-colorful/5.jpg" alt="">
													</a> <span>hot</span>
													<div class="product-action">
														<a class="animate-left" title="Wishlist" href="#"> <i
															class="pe-7s-like"></i>
														</a> <a class="animate-top" title="Add To Cart" href="#">
															<i class="pe-7s-cart"></i>
														</a> <a class="animate-right" title="Quick View"
															data-toggle="modal" data-target="#exampleModal" href="#">
															<i class="pe-7s-look"></i>
														</a>
													</div>
												</div>
												<div class="product-content">
													<h4>
														<a href="#">Mini Waffle 5 Pack</a>
													</h4>
													<span>$115.00</span>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div id="grid-sidebar2" class="tab-pane fade">
									<div class="row">
										<div class="col-lg-12 col-xl-6">
											<div
												class="product-wrapper mb-30 single-product-list product-list-right-pr mb-60">
												<div class="product-img list-img-width">
													<a href="#"> <img
														src="assets/img/product/fashion-colorful/1.jpg" alt="">
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
															<a href="#">Dagger Smart Trousers</a>
														</h4>
														<span>$150.00</span>
														<p>Lorem ipsum dolor sit amet, mana consectetur
															adipisicing elit, sed do eiusmod tempor labore.</p>
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
										<div class="col-lg-12 col-xl-6">
											<div
												class="product-wrapper mb-30 single-product-list product-list-right-pr mb-60">
												<div class="product-img list-img-width">
													<a href="#"> <img
														src="assets/img/product/fashion-colorful/2.jpg" alt="">
													</a>
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
															<a href="#">Homme Tapered Smart</a>
														</h4>
														<span>$180.00</span>
														<p>Lorem ipsum dolor sit amet, mana consectetur
															adipisicing elit, sed do eiusmod tempor labore.</p>
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
										<div class="col-lg-12 col-xl-6">
											<div
												class="product-wrapper mb-30 single-product-list product-list-right-pr mb-60">
												<div class="product-img list-img-width">
													<a href="#"> <img
														src="assets/img/product/fashion-colorful/3.jpg" alt="">
													</a>
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
															<a href="#">Skinny Jeans Terry</a>
														</h4>
														<span>$130.00</span>
														<p>Lorem ipsum dolor sit amet, mana consectetur
															adipisicing elit, sed do eiusmod tempor labore.</p>
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
										<div class="col-lg-12 col-xl-6">
											<div
												class="product-wrapper mb-30 single-product-list product-list-right-pr mb-60">
												<div class="product-img list-img-width">
													<a href="#"> <img
														src="assets/img/product/fashion-colorful/4.jpg" alt="">
													</a> <span>new</span>
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
															<a href="#">Navy Bird Print</a>
														</h4>
														<span>$120.00</span>
														<p>Lorem ipsum dolor sit amet, mana consectetur
															adipisicing elit, sed do eiusmod tempor labore.</p>
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
										<div class="col-lg-12 col-xl-6">
											<div
												class="product-wrapper mb-30 single-product-list product-list-right-pr mb-60">
												<div class="product-img list-img-width">
													<a href="#"> <img
														src="assets/img/product/fashion-colorful/5.jpg" alt="">
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
															<a href="#">Leg Smart Trousers </a>
														</h4>
														<span>$170.00</span>
														<p>Lorem ipsum dolor sit amet, mana consectetur
															adipisicing elit, sed do eiusmod tempor labore.</p>
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
										<div class="col-lg-12 col-xl-6">
											<div
												class="product-wrapper mb-30 single-product-list product-list-right-pr mb-60">
												<div class="product-img list-img-width">
													<a href="#"> <img
														src="assets/img/product/fashion-colorful/1.jpg" alt="">
													</a>
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
															<a href="#">Arifo Stylas Dress</a>
														</h4>
														<span>$190.00</span>
														<p>Lorem ipsum dolor sit amet, mana consectetur
															adipisicing elit, sed do eiusmod tempor labore.</p>
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
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="pagination-style mt-30 text-center">
						<ul>
							<li><a href="#"><i class="ti-angle-left"></i></a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">...</a></li>
							<li><a href="#">19</a></li>
							<li class="active"><a href="#"><i class="ti-angle-right"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>