<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<title>Chỉnh sửa màu sắc</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
	<div style="padding: 0px 300px;">
		<h2>Chỉnh sửa màu sắc</h2>
		<form:form action="save" method="post" modelAttribute="color"
			enctype="multipart/form-data">
			<div class="mb-3 row">
				<label for="staticEmail" class="col-sm-3 col-form-label">Id</label>
				<div class="col-sm-9">
					<input type="text" readonly class="form-control-plaintext"
						id="staticEmail" value="${color.id}">
					<form:hidden path="id" />
				</div>
			</div>
			<div class="mb-3 row">
				<label for="inputPassword" class="col-sm-3 col-form-label">Loại
					sản phẩm</label>
				<div class="col-sm-9">
					<form:select path="product.id" items="${listProductId}"
						class="form-select">
					</form:select>
				</div>
			</div>
			<div class="mb-3 row">
				<label for="inputPassword" class="col-sm-3 col-form-label">Tên
					màu sản phẩm:</label>
				<div class="col-sm-9">
					<form:input path="name_color" class="form-control" />
				</div>
			</div>
			<div class="mb-3 row">
				<label for="inputPassword" class="col-sm-3 col-form-label">Mã
					code màu:</label>
				<div class="col-sm-9">
					<form:input path="color_code" class="form-control" />
				</div>
			</div>
			<div class="mb-3 row">
				<label for="inputPassword" class="col-sm-3 col-form-label">Hình
					ảnh</label>
				<div class="col-sm-9">
					<form:input type="file" class="filestyle" path="images" id="images"
						placeholder="Upload Photo" required="required" multiple="multiple" value="h" />
				</div>
			</div>
			<input class="btn btn-secondary" type="submit" value="Lưu">
		</form:form>
	</div>
</body>