<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm loại sản phẩm</title>
</head>
<body>
	<div style="padding: 0px 300px;">
		<h2>Thêm loại sản phẩm</h2>
		<form:form action="save" method="post" modelAttribute="category">
			<div class="mb-3 row">
				<label for="inputPassword" class="col-sm-3 col-form-label">Tên
					loại sản phẩm:</label>
				<div class="col-sm-9">
					<form:input path="name" class="form-control" />
				</div>
			</div>
			<div class="mb-3 row">
				<label for="inputPassword" class="col-sm-3 col-form-label">Mô
					tả loại sản phẩm</label>
				<div class="col-sm-9">
					<form:textarea class="form-control"
						id="exampleFormControlTextarea1" rows="5" path="decriptions"></form:textarea>
				</div>
			</div>
			<input class="btn btn-secondary" type="submit" value="Lưu">
		</form:form>
	</div>
</body>
</html>