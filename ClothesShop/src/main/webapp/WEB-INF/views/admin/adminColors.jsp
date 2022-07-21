<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<title>Admin - Màu sản phẩm</title>
<body>
	<div class="container-fluid">
		<!-- DataTables Example -->
		<div class="card mb-3">
			<div class="card-header">
				<i class="fas fa-table"></i> Màu sản phẩm
				<button type="button" class="btn btn-outline-dark add-btn">
					<a href="<c:url value="/quan-tri/mau-sac-sp/new" />"> <i
						class="fa-solid fa-circle-plus"></i>&nbsp;Thêm
					</a>
				</button>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>STT</th>
								<th>Tên sản phẩm</th>
								<th>Tên màu</th>
								<th>Mã màu</th>
								<th>Hình ảnh</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${listColor}" varStatus="loop">
								<tr>
									<td>${loop.index+1}</td>
									<td>${item.product.name}</td>
									<td>
										<div
											style="width: 30px; height: 30px;border: 2px solid black; background: ${ item.color_code }; -moz-border-radius: 60px; -webkit-border-radius: 60px; border-radius: 60px;margin-left: 15px;"></div>
									</td>
									<td>${item.color_code}</td>
									<td><c:forEach var="img" items="${ item.image }">
											<a href="#"> <img style="width: 50px;"
												src="<c:url value="/assets/user/img/product/${item.product.id}/${img}"/>"
												alt="">
											</a>
										</c:forEach></td>
									<td><a
										href="<c:url value="/quan-tri/mau-sac-sp/edit?id=${item.id}" />"><i
											class="fa-solid fa-pen-to-square"></i></a></td>
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
</body>