<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop quần áo - Liên hệ</title>
</head>
<body>
	<div class="breadcrumb-area pt-205 pb-210"
		style="background-image: url(<c:url value="/assets/user/img/bg/breadcrumb.jpg"></c:url>)">
		<div class="container">
			<div class="breadcrumb-content text-center">
				<h2>Liên hệ</h2>
				<ul>
					<li><a href="index.html">Trang chủ</a></li>
					<li>Liên hệ</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- shopping-cart-area start -->
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
								<h4>Contact Information</h4>
							</div>
							<form id="contact-form" class="contact-form"
								action="assets/mail.php" method="post">
								<div class="row">
									<div class="col-md-6">
										<div class="contact-input-style mb-30">
											<label>Name*</label> <input name="name" required=""
												type="text">
										</div>
									</div>
									<div class="col-md-6">
										<div class="contact-input-style mb-30">
											<label>Email*</label> <input name="email" required=""
												type="email">
										</div>
									</div>
									<div class="col-md-6">
										<div class="contact-input-style mb-30">
											<label>Telephone</label> <input name="telephone" required=""
												type="text">
										</div>
									</div>
									<div class="col-md-6">
										<div class="contact-input-style mb-30">
											<label>subject</label> <input name="subject" required=""
												type="text">
										</div>
									</div>
									<div class="col-md-12">
										<div class="contact-textarea-style mb-30">
											<label>Comment*</label>
											<textarea class="form-control2" name="message" required=""></textarea>
										</div>
										<button class="submit contact-btn btn-hover" type="submit">
											Send Message</button>
									</div>
								</div>
							</form>
							<p class="form-messege"></p>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="contact-info-wrapper">
						<div class="contact-title">
							<h4>Location & Details</h4>
						</div>
						<div class="contact-info">
							<div class="single-contact-info">
								<div class="contact-info-icon">
									<i class="ti-location-pin"></i>
								</div>
								<div class="contact-info-text">
									<p>
										<span>Address:</span> 1234 - Bandit Tringi lAliquam <br>
										Vitae. New York
									</p>
								</div>
							</div>
							<div class="single-contact-info">
								<div class="contact-info-icon">
									<i class="pe-7s-mail"></i>
								</div>
								<div class="contact-info-text">
									<p>
										<span>Email: </span> Support@plazathemes.com
									</p>
								</div>
							</div>
							<div class="single-contact-info">
								<div class="contact-info-icon">
									<i class="pe-7s-call"></i>
								</div>
								<div class="contact-info-text">
									<p>
										<span>Phone: </span> (800) 0123 456 789
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>