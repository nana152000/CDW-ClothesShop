<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm màu sắc</title>
</head>
<body>
	<div style="padding: 0px 300px;">
		<h2>Thêm màu sắc</h2>
		<form:form action="save" method="post" modelAttribute="color"
			enctype="multipart/form-data">
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
						placeholder="Upload Photo" required="required" multiple="multiple" />
				</div>
			</div>
			<input class="btn btn-secondary" type="submit" value="Lưu">
		</form:form>
	</div>
</body>
</html>