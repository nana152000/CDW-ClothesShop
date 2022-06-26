<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<title>Admin - Loại sản phẩm</title>
<body>
	<div class="container-fluid">
		<!-- DataTables Example -->
		<div class="card mb-3">
			<div class="card-header">
				<i class="fas fa-table"></i> Loại sản phẩm
				<button type="button" class="btn btn-outline-dark add-btn">
					<a href="<c:url value="/quan-tri/slides/new" />"> <i
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
								<th>#</th>
								<th>Tiêu đề</th>
								<th>Nội dung</th>
								<th>Hình ảnh</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${listSlide}">
								<tr>
									<td>${item.id}</td>
									<td>${item.caption}</td>
									<td>${item.content}</td>
									<td>${item.image}</td>
									<td><a
										href="<c:url value="/slides/delete?id=${item.id}" />"><i
											class="fa-solid fa-trash"></i></a>&emsp; <a
										href="<c:url value="/quan-tri/slides/edit?id=${item.id}" />"><i
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