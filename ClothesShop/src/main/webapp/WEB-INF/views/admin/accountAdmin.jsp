<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<title>Admin - Tài khoản của bạn</title>
<body>
	<div class="container-fluid">
		<div class="card mb-3">
			<div class="card-header">
				<i class="fas fa-table"></i> Tài khoản của bạn
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<div class="checkout-area ptb-100">
						<div class="container">
							<div class="row" style="padding: 0px 300px;">
								<form:form action="tai-khoan-admin/save" method="post" modelAttribute="user">
									<div class="mb-3 row" style="display: none">
										<label for="staticEmail" class="col-sm-3 col-form-label">Id</label>
										<div class="col-sm-9">
											<input type="text" readonly class="form-control-plaintext"
												id="staticEmail" value="${user.id}">
											<form:hidden path="id" />
										</div>
									</div>
									<div class="mb-3 row">
										<label for="inputPassword" class="col-sm-3 col-form-label">Họ
											và tên:</label>
										<div class="col-sm-9">
											<form:input path="display_name" class="form-control" />
										</div>
									</div>
									<div class="mb-3 row" style="display: none">
										<label for="inputPassword" class="col-sm-3 col-form-label">Mật
											khẩu:</label>
										<div class="col-sm-9">
											<form:input type="text" placeholder="" path="password"
												name="pass" id="pass" />
										</div>
									</div>
									<div class="mb-3 row">
										<label for="inputPassword" class="col-sm-3 col-form-label">Email:</label>
										<div class="col-sm-9">
											<form:input path="email" class="form-control" />
										</div>
									</div>
									<div class="mb-3 row">
										<label for="inputPassword" class="col-sm-3 col-form-label">Số
											điện thoại:</label>
										<div class="col-sm-9">
											<form:input path="phone" class="form-control" />
										</div>
									</div>
									<div class="mb-3 row">
										<label for="inputPassword" class="col-sm-3 col-form-label">Địa
											chỉ:</label>
										<div class="col-sm-9">
											<form:input path="address" class="form-control" />
										</div>
									</div>
									<div class="mb-3 row" style="display: none">										
										<div class="col-sm-9">
											<form:input path="active" class="form-control" />
										</div>
									</div>
									<div class="mb-3 row" style="display: none">									
										<div class="col-sm-9">
											<form:input path="userRole" class="form-control" />
										</div>
									</div>
									<input class="btn btn-secondary" type="submit" value="Lưu">
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="card-footer small text-muted">Updated yesterday at
				11:59 PM</div>
		</div>
	</div>
</body>