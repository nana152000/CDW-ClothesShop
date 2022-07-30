<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<title><spring:message code="label.titleHome6" /></title>
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
					<li style="color: black;"><spring:message code="label.dangky" /></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- register-area start -->

	<div class="register-area ptb-100">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12 col-12 col-lg-12 col-xl-6 ml-auto mr-auto">
					<div class="login">
						<div class="login-form-container">
							<div class="login-form">
								<form:form id="registerForm" action="save" method="POST"
									modelAttribute="user">
									<div class="form-row">
										<!-- path la de mapping toi class Users trong entity -->
										<div class="form-group col-md-12">
											<form:input type="email" path="email" placeholder="Email"
												class="form-control" />
											<span class="form-message"></span>
										</div>
										<div class="form-group col-md-12">
											<form:input type="password" path="password"
												placeholder="Mật khẩu" class="form-control" />
											<span class="form-message"></span>
										</div>
										<div class="form-group col-md-12">
											<form:input type="text" path="display_name"
												placeholder="Họ và tên" class="form-control" />
											<span class="form-message"></span>
										</div>
										<div class="form-group col-md-12">
											<form:input type="text" path="address" placeholder="Địa chỉ"
												class="form-control" />
											<span class="form-message"></span>
										</div>
										<div class="form-group col-md-12">
											<form:input type="text" path="phone"
												placeholder="Số điện thoại" class="form-control" />
											<span class="form-message"></span>
										</div>
										<div class="button-box">
											<button type="submit" class="default-btn floatright"
												value="Save">Đăng ký</button>
										</div>
									</div>
								</form:form>
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
								form : '#registerForm',
								formGroupSelector : '.form-group',
								errorSelector : '.form-message',
								rules : [
										Validator.isRequired('#email'),
										Validator.isEmail('#email',
												'Vui lòng nhập đúng mail!'),
										Validator.isRequired('#password'),
										Validator
												.minLength('#password', 4,
														'Mật khẩu phải nhiểu hơn 4 kí tự'),
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