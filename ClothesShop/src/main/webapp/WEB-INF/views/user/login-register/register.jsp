<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					<li><a href="index.html">Trang chủ</a></li>
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
								<form action="#" method="post">
									<input type="text" name="user-name" placeholder="Username">
									<input type="password" name="user-password"
										placeholder="Password"> <input name="user-email"
										placeholder="Email" type="email">
									<div class="button-box">
										<button type="submit" class="default-btn floatright">Register</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>