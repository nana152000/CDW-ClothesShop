<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Shop quần áo - Trang chủ</title>
<body>
	<!-- slide -->
	<div class="slider-area">
		<div class="slider-active owl-carousel">
			<c:forEach var="slide" items="${slides}">
				<div class="single-slider single-slider-book1 bg-img"
					style="background-image: url(<c:url value="/assets/user/img/slider/${slide.image}"></c:url>)">
					<div class="container">
						<div
							class="slider-animation slider-content-book fadeinup-animated">
							<h1 class="animated">
								<span>${slide.caption}</span>
							</h1>
							<p class="animated">${slide.content}</p>
							<a href="shop.html">More Books</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- best product area start -->
	<div class="best-product-area pb-15">
		<div style="height: 35px"></div>
		<div class="pl-100 pr-100">
			<div class="container-fluid">
				<div class="section-title-3 text-center mb-40">
					<h2>Sản phẩm bán chạy nhất</h2>
				</div>
				<div class="best-product-style">
					<div
						class="product-tab-list2 text-center mb-95 nav product-menu-mrg"
						role="tablist">
						<c:forEach var="category" items="${categories}" varStatus="index">
							<c:if test="${index.first}">
								<a class="active" href="#home${category.id}" data-toggle="tab" role="tab">
									<h4>${category.name}</h4>
								</a>
							</c:if>
							<c:if test="${not index.first}">
								<a href="#home${category.id}" data-toggle="tab" role="tab">
									<h4>${category.name}</h4>
								</a>
							</c:if>
						</c:forEach>
					</div>
					<div class="tab-content">
						<c:forEach var="category" items="${categories}" varStatus="index">
							<c:if test="${index.first}">
								<div class="tab-pane active show fade" id="home${category.id}"
									role="tabpanel">
							</c:if>
							<c:if test="${not index.first}">
								<div class="tab-pane fade" id="home${category.id}" role="tabpanel">
							</c:if>
							<div class="custom-row">
								<div class="custom-col-5 custom-col-style mb-95">
									<div class="product-wrapper">
										<div class="product-img-2">
											<a href="#"> <img
												src="<c:url value="assets/user/img/product/book/1.png"></c:url>" alt="">
											</a>
											<div class="product-action-2">
												<a class="animate-left add-style-2" title="Add To Cart"
													href="#">Add to Cart <i class="ti-shopping-cart"></i></a> <a
													class="animate-right wishlist-style-2" title="wishlist"
													href="#"> <i class="ti-heart"></i>
												</a>
											</div>
										</div>
										<div class="product-content-2 text-center">
											<h4>
												<a href="product-details.html">World At War Vol2</a>
											</h4>
											<span>By: Arif Khan</span>
											<div class="product-rating">
												<i class="ti-star black"></i> <i class="ti-star black"></i>
												<i class="ti-star black"></i> <i class="ti-star"></i> <i
													class="ti-star"></i>
											</div>
										</div>
									</div>
								</div>
								<div class="custom-col-5 custom-col-style mb-95">
									<div class="product-wrapper">
										<div class="product-img-2">
											<a href="#"> <img
												src="<c:url value="assets/user/img/product/book/2.png"></c:url>" alt="">
											</a>
											<div class="product-action-2">
												<a class="animate-left add-style-2" title="Add To Cart"
													href="#">Add to Cart <i class="ti-shopping-cart"></i></a> <a
													class="animate-right wishlist-style-2" title="wishlist"
													href="#"> <i class="ti-heart"></i>
												</a>
											</div>
										</div>
										<div class="product-content-2 text-center">
											<h4>
												<a href="product-details.html">Learn With Arif</a>
											</h4>
											<span>By: Arif Khan</span>
										</div>
									</div>
								</div>
								<div class="custom-col-5 custom-col-style mb-95">
									<div class="product-wrapper">
										<div class="product-img-2">
											<a href="#"> <img
												src="<c:url value="assets/user/img/product/book/3.png"></c:url>" alt="">
											</a>
											<div class="product-action-2">
												<a class="animate-left add-style-2" title="Add To Cart"
													href="#">Add to Cart <i class="ti-shopping-cart"></i></a> <a
													class="animate-right wishlist-style-2" title="wishlist"
													href="#"> <i class="ti-heart"></i>
												</a>
											</div>
										</div>
										<div class="product-content-2 text-center">
											<h4>
												<a href="product-details.html">Tour Gide for Africa </a>
											</h4>
											<span>By: Selim Rana & Newaz Sharif</span>
										</div>
									</div>
								</div>
								<div class="custom-col-5 custom-col-style mb-95">
									<div class="product-wrapper">
										<div class="product-img-2">
											<a href="#"> <img
												src="<c:url value="assets/user/img/product/book/4.png"></c:url>" alt="">
											</a>
											<div class="product-action-2">
												<a class="animate-left add-style-2" title="Add To Cart"
													href="#">Add to Cart <i class="ti-shopping-cart"></i></a> <a
													class="animate-right wishlist-style-2" title="wishlist"
													href="#"> <i class="ti-heart"></i>
												</a>
											</div>
										</div>
										<div class="product-content-2 text-center">
											<h4>
												<a href="#">History of Moon</a>
											</h4>
											<span>By: shakara tasnim</span>
											<div class="product-rating">
												<i class="ti-star black"></i> <i class="ti-star black"></i>
												<i class="ti-star black"></i> <i class="ti-star"></i> <i
													class="ti-star"></i>
											</div>
										</div>
									</div>
								</div>
								<div class="custom-col-5 custom-col-style mb-95">
									<div class="product-wrapper">
										<div class="product-img-2">
											<a href="#"> <img
												src="<c:url value="assets/user/img/product/book/5.png"></c:url>" alt="">
											</a>
											<div class="product-action-2">
												<a class="animate-left add-style-2" title="Add To Cart"
													href="#">Add to Cart <i class="ti-shopping-cart"></i></a> <a
													class="animate-right wishlist-style-2" title="wishlist"
													href="#"> <i class="ti-heart"></i>
												</a>
											</div>
										</div>
										<div class="product-content-2 text-center">
											<h4>
												<a href="#">Best Freelancing Guide</a>
											</h4>
											<span>By: kohinur tabassum</span>
											<div class="product-rating">
												<i class="ti-star black"></i> <i class="ti-star black"></i>
												<i class="ti-star black"></i> <i class="ti-star"></i> <i
													class="ti-star"></i>
											</div>
										</div>
									</div>
								</div>
								<div class="custom-col-5 custom-col-style mb-95">
									<div class="product-wrapper">
										<div class="product-img-2">
											<a href="#"> <img
												src="<c:url value="assets/user/img/product/book/6.png"></c:url>" alt="">
											</a>
											<div class="product-action-2">
												<a class="animate-left add-style-2" title="Add To Cart"
													href="#">Add to Cart <i class="ti-shopping-cart"></i></a> <a
													class="animate-right wishlist-style-2" title="wishlist"
													href="#"> <i class="ti-heart"></i>
												</a>
											</div>
										</div>
										<div class="product-content-2 text-center">
											<h4>
												<a href="#">We Are Going Down</a>
											</h4>
											<span>By: Momen Bhuiyan</span>
										</div>
									</div>
								</div>
								<div class="custom-col-5 custom-col-style mb-95">
									<div class="product-wrapper">
										<div class="product-img-2">
											<a href="#"> <img
												src="assets/user/img/product/book/7.png" alt="">
											</a>
											<div class="product-action-2">
												<a class="animate-left add-style-2" title="Add To Cart"
													href="#">Add to Cart <i class="ti-shopping-cart"></i></a> <a
													class="animate-right wishlist-style-2" title="wishlist"
													href="#"> <i class="ti-heart"></i>
												</a>
											</div>
										</div>
										<div class="product-content-2 text-center">
											<h4>
												<a href="product-details.html">Learn With Arif</a>
											</h4>
											<span>By: Arif Khan</span>
											<div class="product-rating">
												<i class="ti-star black"></i> <i class="ti-star black"></i>
												<i class="ti-star black"></i> <i class="ti-star"></i> <i
													class="ti-star"></i>
											</div>
										</div>
									</div>
								</div>
								<div class="custom-col-5 custom-col-style mb-95">
									<div class="product-wrapper">
										<div class="product-img-2">
											<a href="#"> <img
												src="assets/user/img/product/book/8.png" alt="">
											</a>
											<div class="product-action-2">
												<a class="animate-left add-style-2" title="Add To Cart"
													href="#">Add to Cart <i class="ti-shopping-cart"></i></a> <a
													class="animate-right wishlist-style-2" title="wishlist"
													href="#"> <i class="ti-heart"></i>
												</a>
											</div>
										</div>
										<div class="product-content-2 text-center">
											<h4>
												<a href="#">Fallen Light</a>
											</h4>
											<span>By: Arif Khan & Newaz Sharif</span>
											<div class="product-rating">
												<i class="ti-star black"></i> <i class="ti-star black"></i>
												<i class="ti-star black"></i> <i class="ti-star"></i> <i
													class="ti-star"></i>
											</div>
										</div>
									</div>
								</div>
								<div class="custom-col-5 custom-col-style mb-95">
									<div class="product-wrapper">
										<div class="product-img-2">
											<a href="#"> <img
												src="assets/user/img/product/book/9.png" alt="">
											</a>
											<div class="product-action-2">
												<a class="animate-left add-style-2" title="Add To Cart"
													href="#">Add to Cart <i class="ti-shopping-cart"></i></a> <a
													class="animate-right wishlist-style-2" title="wishlist"
													href="#"> <i class="ti-heart"></i>
												</a>
											</div>
										</div>
										<div class="product-content-2 text-center">
											<h4>
												<a href="#">Sky Fall</a>
											</h4>
											<span>By: Dr. KB Arif Khan</span>
										</div>
									</div>
								</div>
								<div class="custom-col-5 custom-col-style mb-95">
									<div class="product-wrapper">
										<div class="product-img-2">
											<a href="#"> <img
												src="assets/user/img/product/book/10.png" alt="">
											</a>
											<div class="product-action-2">
												<a class="animate-left add-style-2" title="Add To Cart"
													href="#">Add to Cart <i class="ti-shopping-cart"></i></a> <a
													class="animate-right wishlist-style-2" title="wishlist"
													href="#"> <i class="ti-heart"></i>
												</a>
											</div>
										</div>
										<div class="product-content-2 text-center">
											<h4>
												<a href="#">Fly High</a>
											</h4>
											<span>By: Maksud Reza</span>
											<div class="product-rating">
												<i class="ti-star black"></i> <i class="ti-star black"></i>
												<i class="ti-star black"></i> <i class="ti-star"></i> <i
													class="ti-star"></i>
											</div>
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
	<!-- best product area end -->
	<!-- top month area start -->
	<div class="top-month pb-120">
		<div class="container">
			<div class="section-title-3 text-center mb-70">
				<h2>Top Writer In this Month</h2>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="writer-wrapper">
						<img src="assets/user/img/product/book/11.png" alt="">
						<div class="writer-content">
							<h4>Mildred Turner</h4>
							<span>Book Writer & <br>Member of bishwo shahitto
								kendro
							</span>
						</div>
					</div>
				</div>
				<div class="col-md-8">
					<div class="book-list-hover">
						<div class="book-list-active owl-carousel">
							<div class="product-wrapper">
								<div class="product-img-2">
									<a href="#"> <img src="assets/user/img/product/book/12.png"
										alt="">
									</a>
									<div class="product-action-2">
										<a class="animate-left add-style-2" title="Add To Cart"
											href="#">Add to Cart <i class="ti-shopping-cart"></i></a> <a
											class="animate-right wishlist-style-2" title="wishlist"
											href="#"> <i class="ti-heart"></i>
										</a>
									</div>
								</div>
								<div class="product-content-3 text-center">
									<h4>
										<a href="#">Be like Me (magazine)</a>
									</h4>
									<div class="product-rating-2">
										<i class="ti-star"></i> <i class="ti-star"></i> <i
											class="ti-star"></i> <i class="ti-star"></i> <i
											class="ti-star"></i>
									</div>
								</div>
							</div>
							<div class="product-wrapper">
								<div class="product-img-2">
									<a href="#"> <img src="assets/user/img/product/book/13.png"
										alt="">
									</a>
									<div class="product-action-2">
										<a class="animate-left add-style-2" title="Add To Cart"
											href="#">Add to Cart <i class="ti-shopping-cart"></i></a> <a
											class="animate-right wishlist-style-2" title="wishlist"
											href="#"> <i class="ti-heart"></i>
										</a>
									</div>
								</div>
								<div class="product-content-3 text-center">
									<h4>
										<a href="#">Sky Fall (Book)</a>
									</h4>
									<div class="product-rating-2">
										<i class="ti-star"></i> <i class="ti-star"></i> <i
											class="ti-star"></i> <i class="ti-star"></i> <i
											class="ti-star"></i>
									</div>
								</div>
							</div>
							<div class="product-wrapper">
								<div class="product-img-2">
									<a href="#"> <img src="assets/user/img/product/book/12.png"
										alt="">
									</a>
									<div class="product-action-2">
										<a class="animate-left add-style-2" title="Add To Cart"
											href="#">Add to Cart <i class="ti-shopping-cart"></i></a> <a
											class="animate-right wishlist-style-2" title="wishlist"
											href="#"> <i class="ti-heart"></i>
										</a>
									</div>
								</div>
								<div class="product-content-3 text-center">
									<h4>
										<a href="#">Be like Me (magazine)</a>
									</h4>
									<div class="product-rating-2">
										<i class="ti-star"></i> <i class="ti-star"></i> <i
											class="ti-star"></i> <i class="ti-star"></i> <i
											class="ti-star"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- top month area end -->
	<!-- testimonials area start -->
	<div class="testimonials-area bg-img pt-145 pb-160"
		style="background-image: url(assets/user/img/bg/bg2.jpg)">
		<div class="container">
			<div class="testimonials-active owl-carousel">
				<div class="single-testimonial text-center">
					<i class="ti-quote-left"></i>
					<p>There are many variations of passages of Lorem Ipsum
						available, but the majority have suffered alteration in some form.
						There are many variations of passages.</p>
					<h4>tayeb rayed</h4>
					<span>ui ux - Designer</span>
				</div>
				<div class="single-testimonial text-center">
					<i class="ti-quote-left"></i>
					<p>There are many variations of passages of Lorem Ipsum
						available, but the majority have suffered alteration in some form.
						There are many variations of passages.</p>
					<h4>KB Arif Vashar</h4>
					<span>ui ux - Designer</span>
				</div>
				<div class="single-testimonial text-center">
					<i class="ti-quote-left"></i>
					<p>There are many variations of passages of Lorem Ipsum
						available, but the majority have suffered alteration in some form.
						There are many variations of passages.</p>
					<h4>KB Arif Vashar</h4>
					<span>ui ux - Designer</span>
				</div>
			</div>
		</div>
	</div>
	<!-- testimonials area end -->
	<!-- discount area start -->
	<div class="discount-area pr-205 gray-bg-4 pt-115 pb-90">
		<div class="discount-left text-center">
			<img class="tilter" src="assets/user/img/product/book/book1.jpg"
				alt="">
			<h4>Photo Realistic - 50% Discount</h4>
			<a href="#">Buy Now</a>
		</div>
		<div class="discount-right gray-bg-4">
			<div class="row no-gutters">
				<div class="col-lg-6 col-xl-6 col-md-12">
					<div class="new-top mr-15">
						<h3 class="new-top-title">New Arrival</h3>
						<div class="new-top-product">
							<div class="new-top-wrapper mb-50">
								<div class="new-top-img">
									<a href="#"><img src="assets/user/img/product/book/14.png"
										alt=""></a>
									<div class="discount-book-cart">
										<a class="animate-left add-style-2" href="#"
											title="Add To Cart"> <i class="ti-shopping-cart"></i>
										</a>
									</div>
								</div>
								<div class="new-top-content">
									<h4>
										<a href="product-details.html">Learn With Arif</a>
									</h4>
									<span>Dr. KB Arif</span>
									<div class="product-price">
										<div class="old-price">
											<span>$49.00</span>
										</div>
										<div class="new-price">
											<span>$32.00</span>
										</div>
									</div>
									<div class="product-rating-3">
										<i class="pe-7s-star"></i> <i class="pe-7s-star"></i> <i
											class="pe-7s-star"></i> <i class="pe-7s-star"></i> <i
											class="pe-7s-star"></i>
									</div>
								</div>
							</div>
							<div class="new-top-wrapper mb-50">
								<div class="new-top-img">
									<a href="#"><img src="assets/user/img/product/book/16.png"
										alt=""></a>
									<div class="discount-book-cart">
										<a class="animate-left add-style-2" href="#"
											title="Add To Cart"> <i class="ti-shopping-cart"></i>
										</a>
									</div>
								</div>
								<div class="new-top-content">
									<h4>
										<a href="product-details.html">Fallen Light</a>
									</h4>
									<span>Dr. KB Arif</span>
									<div class="product-price">
										<div class="old-price">
											<span>$49.00</span>
										</div>
										<div class="new-price">
											<span>$32.00</span>
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
					</div>
				</div>
				<div class="col-lg-6 col-xl-6 col-md-12">
					<div class="new-top ml-15">
						<h3 class="new-top-title">Sky Fall</h3>
						<div class="new-top-product">
							<div class="new-top-wrapper mb-50">
								<div class="new-top-img">
									<a href="#"><img src="assets/user/img/product/book/15.png"
										alt=""></a>
									<div class="discount-book-cart">
										<a class="animate-left add-style-2" href="#"
											title="Add To Cart"> <i class="ti-shopping-cart"></i>
										</a>
									</div>
								</div>
								<div class="new-top-content">
									<h4>
										<a href="product-details.html">Fly High</a>
									</h4>
									<span>Dr. KB Arif</span>
									<div class="product-price">
										<div class="old-price">
											<span>$49.00</span>
										</div>
										<div class="new-price">
											<span>$32.00</span>
										</div>
									</div>
									<div class="product-rating-3">
										<i class="pe-7s-star"></i> <i class="pe-7s-star"></i> <i
											class="pe-7s-star"></i> <i class="pe-7s-star"></i> <i
											class="pe-7s-star"></i>
									</div>
								</div>
							</div>
							<div class="new-top-wrapper mb-50">
								<div class="new-top-img">
									<a href="#"><img src="assets/user/img/product/book/17.png"
										alt=""></a>
									<div class="discount-book-cart">
										<a class="animate-left add-style-2" href="#"
											title="Add To Cart"> <i class="ti-shopping-cart"></i>
										</a>
									</div>
								</div>
								<div class="new-top-content">
									<h4>
										<a href="product-details.html">History of Moon</a>
									</h4>
									<span>Dr. KB Arif</span>
									<div class="product-price">
										<div class="old-price">
											<span>$49.00</span>
										</div>
										<div class="new-price">
											<span>$32.00</span>
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
	<!-- subscribe area start -->
	<div class="subscribe bg-img ptb-80"
		style="background-image: url(assets/user/img/bg/bg2.jpg)">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-6">
					<div class="subscribe-content">
						<h3>Subscribe to outr newsletter</h3>
						<p>Lorem Ipsum is simply dummy text of the printing and
							typesetting industry. Lorem Ipsum has been the industry's dummy</p>
					</div>
				</div>
				<div class="col-md-12 col-lg-6">
					<div id="mc_embed_signup" class="subscribe-form-2 pr-40">
						<form
							action="http://devitems.us11.list-manage.com/subscribe/post?u=6bbb9b6f5827bd842d9640c82&amp;id=05d85f18ef"
							method="post" id="mc-embedded-subscribe-form"
							name="mc-embedded-subscribe-form" class="validate"
							target="_blank" novalidate>
							<div id="mc_embed_signup_scroll" class="mc-form">
								<input type="email" value="" name="EMAIL" class="email"
									placeholder="Enter Your E-mail" required>
								<!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
								<div class="mc-news" aria-hidden="true">
									<input type="text"
										name="b_6bbb9b6f5827bd842d9640c82_05d85f18ef" tabindex="-1"
										value="">
								</div>
								<div class="clear">
									<input type="submit" value="Subscribe" name="subscribe"
										id="mc-embedded-subscribe" class="button">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- subscribe area end -->
</body>