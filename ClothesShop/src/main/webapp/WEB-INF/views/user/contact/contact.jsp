<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<title><spring:message code="label.titleHome4" /></title>
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
					<li style="color: black;"><spring:message code="label.lienhe" /></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="contact-area ptb-100">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="contact-map-wrapper">
						<div class="contact-map mb-40">
							<div id="hastech2"></div>
						</div>
						<div class="contact-message">
							<div class="contact-title">
								<h4>Thông tin liên lạc</h4>
							</div>
							<form:form id="contactForm" class="contact-form" action="save"
								method="POST" modelAttribute="user">
								<div class="form-row">
									<div class="form-group col-md-6">
										<div class="contact-input-style mb-30">
											<label>Tên*</label> <input type="text" id="display_name"
												placeholder="Họ và tên" class="form-control" /> <span
												class="form-message"></span>
										</div>
									</div>
									<div class="form-group col-md-6">
										<div class="contact-input-style mb-30">
											<label>Email*</label> <input type="text" id="email"
												placeholder="Email" class="form-control" /> <span
												class="form-message"></span>
										</div>
									</div>
									<div class="form-group col-md-6">
										<div class="contact-input-style mb-30">
											<label>Số điện thoại*</label> <input type="text" id="phone"
												placeholder="Số điện thoại" class="form-control" /> <span
												class="form-message"></span>
										</div>
									</div>
									<div class="col-md-6">
										<div class="contact-input-style mb-30">
											<label>Địa chỉ</label> <input name="subject" required=""
												type="text">
										</div>
									</div>
									<div class="col-md-12">
										<div class="contact-textarea-style mb-30">
											<label>Đánh giá*</label>
											<textarea class="form-control2" name="message" required=""></textarea>
										</div>
										<button class="submit contact-btn btn-hover" type="submit">
											Gửi</button>
									</div>
								</div>
							</form:form>
							<p class="form-messege"></p>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="contact-info-wrapper">
						<div class="contact-title">
							<h4>Vị trí & Chi tiết</h4>
						</div>
						<div class="contact-info">
							<div class="single-contact-info">
								<div class="contact-info-icon">
									<i class="ti-location-pin"></i>
								</div>
								<div class="contact-info-text">
									<p>
										<span>Địa chỉ:&nbsp</span> khu phố 6 - Linh Trung <br>
										Thủ Đức. Thành phố Hồ Chí Minh
									</p>
								</div>
							</div>
							<div class="single-contact-info">
								<div class="contact-info-icon">
									<i class="pe-7s-mail"></i>
								</div>
								<div class="contact-info-text">
									<p>
										<span>Email: &nbsp</span> NaGiang@gmail.com
									</p>
								</div>
							</div>
							<div class="single-contact-info">
								<div class="contact-info-icon">
									<i class="pe-7s-call"></i>
								</div>
								<div class="contact-info-text">
									<p>
										<span>Điện thoại: &nbsp</span> (800) 0123 456 789
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		document
				.addEventListener(
						'DOMContentLoaded',
						function() {
							Validator({
								form : '#contactForm',
								formGroupSelector : '.form-group',
								errorSelector : '.form-message',
								rules : [
										Validator.isRequired('#email'),
										Validator.isEmail('#email',
												'Vui lòng nhập đúng mail!'),
										Validator.isRequired('#display_name'),
										Validator
												.isName('#display_name',
														'Nhập tên người dùng không được nhập số'),
										Validator.isRequired('#address'),
										Validator.isRequired('#phone'),
										Validator.isNumber('#phone', '') ]
							});

						});
	</script>
</body>