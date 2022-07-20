<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="dec"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop quần áo - Đăng ký</title>
</head>
<body>
	<div class="breadcrumb-area pt-205 pb-210"
		style="background-image: url(<c:url value="/assets/user/img/bg/breadcrumb.jpg"></c:url>)">
		<div class="container">
			<div class="breadcrumb-content text-center">
				<h2>Đăng ký</h2>
				<ul>
					<li><a href="/trang-chu">Trang chủ</a></li>
					<li>Đăng ký</li>
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
								<form:form action="save" method="POST" modelAttribute="user">
									<!-- path la de mapping toi class Users trong entity -->
									<form:input type="email" path="email" placeholder="Email" />
									<form:input type="password" path="password"
										placeholder="Mật khẩu" />
									<form:input type="text" path="display_name"
										placeholder="Họ và tên" />
									<form:input type="text" path="address" placeholder="Địa chỉ" />
									<form:input type="text" path="phone"
										placeholder="Số điện thoại" />
									<div class="button-box">
										<button type="submit" class="default-btn floatright"
											value="Save">Đăng ký</button>
									</div>
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>