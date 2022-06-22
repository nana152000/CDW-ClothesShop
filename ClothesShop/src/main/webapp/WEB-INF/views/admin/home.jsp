<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<title>Admin - Trang chủ</title>
<body>
	<div class="container-fluid">
		<!-- DataTables Example -->
		<div class="card mb-3">
			<div class="card-header">
				<i class="fas fa-table"></i> Loại
				<button type="button" class="btn btn-outline-dark add-btn"
					data-bs-toggle="modal" data-bs-target="#Modal">
					<i class="fa-solid fa-circle-plus"></i>&nbsp;Thêm
				</button>
			</div>
			<!-- Modal -->
			<div class="modal fade" id="Modal" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Loại sản phẩm</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<form:form action="save" method="post" modelAttribute="slide">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Image</label>
									<form:input type="text" cssclass="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										path="image" />
									<div id="emailHelp" class="form-text"></div>
								</div>
								<div class="mb-3">
									<label for="exampleInputPassword1" class="form-label">Caption</label>
									<form:input type="text" cssclass="form-control"
										id="exampleInputPassword1" path="caption" />
								</div>
								<div class="mb-3">
									<label for="exampleInputPassword1" class="form-label">Content</label>
									<form:input type="text" cssclass="form-control"
										id="exampleInputPassword1" path="content" />
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Đóng</button>
									<button type="button" class="btn btn-primary">
										<input type="submit" value="Save">
									</button>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>#</th>
								<th>image</th>
								<th>caption</th>
								<th>content</th>
								<th>action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${listSlide}">
								<tr>
									<td>${item.id}</td>
									<td>${item.image}</td>
									<td>${item.caption}</td>
									<td>${item.content}</td>
									<td><a href="delete?id=${item.id}"><i
											class="fa-solid fa-trash"></i></a>&emsp; 
											<a href="quan-tri/edit?id=${item.id}"><i
											class="fa-solid fa-pen-to-square" data-bs-toggle="modal"
											data-bs-target=""></i></a>
										</td>
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
	<div class="modal fade" id="ModaleditId3" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Loại sản phẩm</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form:form action="save" method="post" modelAttribute="slide">
						<table border="0" cellpadding="5">
							<tr>
								<td>ID:</td>
								<td>${slide.id}<form:hidden path="id" />
								</td>
							</tr>
							<tr>
								<td>Image:</td>
								<td><form:input path="image" /></td>
							</tr>
							<tr>
								<td>Caption:</td>
								<td><form:input path="caption" /></td>
							</tr>
							<tr>
								<td>Content:</td>
								<td><form:input path="content" /></td>
							</tr>

						</table>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Đóng</button>
							<button type="button" class="btn btn-primary">
								<input type="submit" value="Save">
							</button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>


</body>