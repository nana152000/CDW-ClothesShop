<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<title>Admin - Hóa đơn khách hàng</title>
<body>
	<div class="container-fluid">
		<div class="card mb-3">
			<div class="card-header">
				<i class="fas fa-table"></i> Hóa đơn
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th style="text-align: center;">STT</th>
								<th style="text-align: center;">Tên khách hàng</th>
								<th style="text-align: center;">Email</th>
								<th style="text-align: center;">Địa chỉ</th>
								<th style="text-align: center;">Số điện thoại</th>
								<th style="text-align: center;">Số lượng</th>
								<th style="text-align: center;">Tống giá</th>
								<th style="text-align: center;">Chú thích</th>
								<th style="text-align: center;">Đơn hàng</th>
								<th style="text-align: center;"></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${listOrders}" varStatus="loop">
								<tr>
									<td style="text-align: center;">${loop.index+1}</td>
									<td style="text-align: center;">${item.user.display_name}</td>
									<td style="text-align: center;">${item.user.email}</td>
									<td style="text-align: center;">${item.user.address}</td>
									<td style="text-align: center;">${item.user.phone}</td>
									<td style="text-align: center;">${item.quantity}</td>
									<td style="text-align: center;">${item.total}</td>
									<td style="text-align: center;">${item.note}</td>
									<td style="text-align: center;"><button type="button"
											class="btn btn-outline-dark add-btn" data-bs-toggle="modal"
											data-bs-target="#exampleModal${item.id}">Xem đơn
											hàng</button></td>
									<td><a
										href="<c:url value="/hoa-don/delete?id=${item.id}" />"><i
											class="fa-solid fa-trash"></i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div class="card-footer small text-muted">Updated yesterday at
				11:59 PM</div>
		</div>
	</div>
	<!-- Modal -->
	<c:forEach var="order" items="${listOrders}">
		<div class="modal fade" id="exampleModal${order.id}" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content" style="width: 700px;">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Đơn hàng</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<table class="table">
							<thead>
								<tr>
									<th scope="col"
										style="text-align: center; vertical-align: middle;">STT</th>
									<th scope="col"
										style="text-align: center; vertical-align: middle;">Hình
										ảnh</th>
									<th scope="col"
										style="text-align: center; vertical-align: middle;">Tên
										sản phẩm</th>
									<th scope="col"
										style="text-align: center; vertical-align: middle;">Kích
										cỡ</th>
									<th scope="col"
										style="text-align: center; vertical-align: middle;">Màu</th>
									<th scope="col"
										style="text-align: center; vertical-align: middle;">Số
										lượng</th>
									<th scope="col"
										style="text-align: center; vertical-align: middle;">Giá</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${listOrderDetails}"
									varStatus="loop">
									<c:if test="${item.order.id == order.id}">
										<tr>
											<td>${loop.index+1}</td>
											<td><c:forEach var="color"
													items="${ item.product.colors }" varStatus="index">
													<c:if test="${ item.color == color.color_code}">
														<c:forEach var="img" items="${ color.image }"
															varStatus="index">
															<c:if test="${index.first}">
																<a href="#"> <img style="width: 80px;"
																	src="<c:url value="/assets/user/img/product/${item.product.id}/${img}"/>"
																	alt="">
																</a>
															</c:if>
														</c:forEach>
													</c:if>
												</c:forEach></td>
											<td>${item.product.name}</td>
											<td>${item.size}</td>
											<td>
												<div
													style="width: 30px; height: 30px;border: 2px solid black; background: ${ item.color }; -moz-border-radius: 60px; -webkit-border-radius: 60px; border-radius: 60px;"></div>
											</td>
											<td>${item.quantity}</td>
											<td>${item.total}</td>
										</tr>
									</c:if>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Đóng</button>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
</body>