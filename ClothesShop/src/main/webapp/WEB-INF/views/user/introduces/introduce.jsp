<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<title><spring:message code="label.titleHome3" /></title>
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
							code="label.gioithieu" /></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="about-story pt-95 pb-100">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="story-img">
						<img src="<c:url value="/assets/user/img/banner/11.png"></c:url>"
							alt="">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="story-details pl-50">
						<div class="story-details-top">
							<h2>
								Đến với <span>NG_Clothes</span>
							</h2>
							<p>Chào các cậu! Cảm ơn rất nhiều vì đã ghé thăm cửa hàng
								NG_Clothes. Đây chắc hẳn là sựa lựa chọn đúng đắn cho các cậu,
								cửa hàng tôi có sẵn đầy đủ các mặt hàng như quần, áo, váy,
								đầm,... Hơn hết, cửa hàng luôn cập nhật các mẫu mới nhất. Có các
								nhân viên vui vẻ, hoà đồng, tư vấn rất nhiệt tình giúp các cậu
								có thể có được sự lựa chọn tốt nhất</p>
						</div>
						<div class="story-details-bottom">
							<h4>CHÚNG TÔI BẮT ĐẦU VÀO NĂM 2015</h4>
							<p>Có tất cả các loại tủ quần áo phù hợp với nhu cầu. Mặc dù
								phong cách thay đổi theo mùa hoặc với sự thay đổi kinh tế, bạn
								không cần phải chạy ra ngoài và mua quần áo mới mỗi mùa, một
								cách tiếp cận phổ biến ở Mỹ và châu Á. Chúng ta có thể lấy một
								trang trong sổ tay thời trang của các nước láng giềng châu Âu và
								mặc ít hơn, nhưng tốt hơn, cuối cùng dẫn đến một cách suy nghĩ
								bền vững hơn về thời trang.</p>
						</div>
						<!-- <div class="story-details-bottom">
							<h4>WIN BEST ONLINE SHOP AT 2017</h4>
							<p>ezone provide how all this mistaken idea of denouncing
								pleasure and sing pain was born an will give you a complete
								account of the system, and expound the actual teachings of the
								eat explorer.</p>
						</div> -->
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="choose-area pb-100">
		<div class="container">
			<div class="about-section">
				<h3>
					BẠN CÓ THỂ CHỌN CHÚNG TÔI VÌ <br>CHÚNG TÔI LUÔN CUNG CẤP SỰ
					QUAN TRỌNG ...
				</h3>
				<p>NG_Clothes luôn coi trọng khách hàng, là đặt lợi ích khách
					hàng lên hàng đầu</p>
			</div>
			<div class="row">
				<div class="col-lg-7 col-md-12">
					<div class="all-causes">
						<div class="row">
							<div class="col-md-6 causes-res">
								<div class="choose-wrapper">
									<h4>CHUYỂN PHÁT NHANH</h4>
									<p>Việc thực hiện các công đoạn thu gom, gói, vận chuyển
										hàng hóa nhanh về thời gian.</p>
								</div>
								<div class="choose-wrapper">
									<h4>THANH TOÁN AN TOÀN</h4>
									<p>Thanh toán qua bưu điện, thanh toán tiền mặt hoặc thẻ
										ngân hàng. Có độ tin cậy cao.</p>
								</div>
								<div class="choose-wrapper">
									<h4>DỄ DÀNG THEO DÕI ĐẶT HÀNG</h4>
									<p>Dễ dàng biết được đơn hàng đã được đi đến đâu.</p>
								</div>
								<div class="choose-wrapper">
									<h4>24/7 HỖ TRỢ</h4>
									<p>Tốc độ trả lời tin nhắn lên đến 99%.</p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="choose-wrapper">
									<h4>SẢN PHẨM CHẤT LƯỢNG</h4>
									<p>Mẫu giao giống như hình. Được kiểm tra trước khi nhận
										hàng.</p>
								</div>
								<div class="choose-wrapper">
									<h4>ĐẢM BẢO HOÀN LẠI TIỀN</h4>
									<p>Đảm bảo hoàn lại tiền khi kiểm tra hàng bị hư hỏng hay
										nhận hàng không đúng mẫu.</p>
								</div>
								<div class="choose-wrapper">
									<h4>TRẢ LẠI MIỄN PHÍ</h4>
									<p>Khi trả lời khách hàng không phải đóng bất kỳ chi phí
										nào.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-5 col-md-12">
					<div class="choose-banner-wrapper f-right">
						<img src="<c:url value="/assets/user/img/banner/38.jpg"></c:url>"
							alt="">
						<div class="choose-banner-text">
							<h4>
								HÀNG BÁN <br>TRONG NGÀY
							</h4>
							<h3>
								GIẢM GIÁ<br> <span>50%</span>
							</h3>
							<a href="#">MUA NGAY </a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- testimonials area start -->
	<div class="testimonials-area pb-95 bg-img"
		style="background-image: url(assets/img/bg/7.jpg)">
		<div class="container">
			<div class="testimonials-active owl-carousel">
				<div class="single-testimonial-2 text-center">
					<img src="<c:url value="/assets/user/img/logo/logo.png"></c:url>"
						alt="">
					<p>“Thời trang không nhất thiết là về nhãn hiệu. Đó cũng không
						phải về thương hiệu. Mà chính là một điều khác đến từ bên trong
						con người bạn”.</p>
					<img src="<c:url value="/assets/user/img/team/2.png"></c:url>"
						alt="">
					<h4>tayeb rayed</h4>
					<span>uiux Designer</span>
				</div>
			</div>
		</div>
	</div>
</body>