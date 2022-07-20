<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop quần áo - Yêu thích</title>
</head>
<body>
	<div class="breadcrumb-area pt-205 pb-210"
		style="background-image: url(<c:url value="/assets/user/img/bg/bgr.jpg"></c:url>)">
		<div class="container">
			<div class="breadcrumb-content text-center">
				<h2 style="color: black;">Yêu thích</h2>
				<ul>
					<li><a href="index.html" style="color: black;">Trang chủ</a></li>
					<li style="color: black;">Yêu thích</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- shopping-cart-area start -->
	<div class="cart-main-area pt-95 pb-100 wishlist">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<h1 class="cart-heading">Sản phẩm yêu thích</h1>
					<form action="#">
						<div class="table-content table-responsive">
							<table>
								<thead>
									<tr>
										<th>STT</th>
										<th>Hình ảnh</th>
										<th>Sản phẩm</th>
										<th>Giá</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="product-remove"><a href="#"><i
												class="pe-7s-close"></i></a></td>
										<td class="product-thumbnail"><a href="#"><img
												src="assets/img/cart/1.jpg" alt=""></a></td>
										<td class="product-name"><a href="#">Wooden Furniture
										</a></td>
										<td class="product-price-cart"><span class="amount">$165.00</span></td>
										<td class="product-subtotal">$165.00</td>
									</tr>

								</tbody>
							</table>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>