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
		<form:form action="save" method="post" modelAttribute="color">
			<table border="0" cellpadding="5">
				<tr>
					<td>Sản phẩm:</td>
					<td><form:select path="product.id" items="${listProductId}">
						</form:select></td>
				</tr>
				<tr>
					<td>Tên màu sản phẩm:</td>
					<td><form:input path="name_color" /></td>
				</tr>
				<tr>
					<td>Mã code màu:</td>
					<td><form:input path="color_code" /></td>
				</tr>
				<tr>
					<td>Hình ảnh:</td>
					<td><form:input path="image" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Save"></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>