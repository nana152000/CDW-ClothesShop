<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Chỉnh sửa loại</title>
</head>
<body>
	<div style="padding: 0px 300px;">
		<h2>Chỉnh sửa sản phẩm</h2>
		<form:form action="save" method="post" modelAttribute="product">
			<div class="mb-3 row">
				<label for="inputPassword" class="col-sm-3 col-form-label">Loại
					sản phẩm</label>
				<div class="col-sm-9">
					<form:select path="category.id" items="${listCategoryId}"
						class="form-select">
					</form:select>
				</div>
			</div>
			<div class="mb-3 row">
				<label for="inputPassword" class="col-sm-3 col-form-label">Tên
					sản phẩm</label>
				<div class="col-sm-9">
					<form:input path="name" class="form-control" />
				</div>
			</div>
			<div class="mb-3 row">
				<label for="inputPassword" class="col-sm-3 col-form-label">Kích
					cỡ</label>
				<div class="col-sm-9">
					<form:input path="price" class="form-control" />
				</div>
			</div>
			<div class="mb-3 row">
				<label for="inputPassword" class="col-sm-3 col-form-label">Giá</label>
				<div class="col-sm-9">
					<form:input path="sizes" class="form-control" />
				</div>
			</div>
			<div class="mb-3 row">
				<label for="inputPassword" class="col-sm-3 col-form-label">Khuyến
					mãi</label>
				<div class="col-sm-9">
					<form:input path="sale" class="form-control" />
				</div>
			</div>
			<div class="mb-3 row">
				<label for="inputPassword" class="col-sm-3 col-form-label">Sản
					phẩm nổi bật</label>
				<div class="col-sm-9">
					<form:select path="featured_products" class="form-select">
						<form:option value="0">Không nổi bật</form:option>
						<form:option value="1">Nổi bật</form:option>
					</form:select>
				</div>
			</div>
			<div class="mb-3 row">
				<label for="inputPassword" class="col-sm-3 col-form-label">Sản
					phẩm mới</label>
				<div class="col-sm-9">
					<form:select path="new_product" class="form-select">
						<form:option value="0">Sản phẩm cũ</form:option>
						<form:option value="1">Sản phẩm mới</form:option>
					</form:select>
				</div>
			</div>
			<div class="mb-3 row">
				<label for="inputPassword" class="col-sm-3 col-form-label">Mô
					tả</label>
				<div class="col-sm-9">
					<form:textarea class="form-control"
						id="exampleFormControlTextarea1" rows="5" path="decriptions"></form:textarea>
				</div>
			</div>
			<input class="btn btn-secondary" type="submit" value="Save">
		</form:form>
	</div>
</body>
</html>