<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Chỉnh sửa loại</title>
</head>
<body>
	<div align="center">
		<h2>Chỉnh sửa</h2>
		<form:form action="save" method="post" modelAttribute="product">
			<table border="0" cellpadding="5">
				<tr>
					<td>ID:</td>
					<td>${product.id}<form:hidden path="id" />
					</td>
				</tr>
				<tr>
					<td>Loại sản phẩm:</td>
					<td><form:select path="category.id" items="${listCategoryId}">
						</form:select></td>
				</tr>
				<tr>
					<td>Tên:</td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>Kích cỡ:</td>
					<td><form:input path="sizes" /></td>
				</tr>
				<tr>
					<td>Giá:</td>
					<td><form:input path="price" /></td>
				</tr>
				<tr>
					<td>Khuyến mãi:</td>
					<td><form:input path="sale" /></td>
				</tr>
				<tr>
					<td>Sản phẩm nổi bật:</td>
					<td><form:select path="featured_products">
							<form:option value="0">Không nổi bật</form:option>
							<form:option value="1">Nổi bật</form:option>
						</form:select></td>
				</tr>
				<tr>
					<td>Sản phẩm mới:</td>
					<td><form:select path="new_product">
							<form:option value="0">Sản phẩm cũ</form:option>
							<form:option value="1">Sản phẩm mới</form:option>
						</form:select></td>
				</tr>
				<tr>
					<td>Mô tả:</td>
					<td><form:input path="decriptions" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Save"></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>