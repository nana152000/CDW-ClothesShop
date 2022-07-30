<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<title>Admin - Tài khoản khách hàng</title>
<body>
	<div class="container-fluid">
		<div class="card mb-3">
			<div class="card-header">
				<i class="fas fa-table"></i> Tài khoản khách hàng
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th style="text-align: center;">STT</th>
								<th style="text-align: center;">Email</th>
								<th style="text-align: center;">Tên khách hàng</th>
								<th style="text-align: center;">Địa chỉ</th>
								<th style="text-align: center;">Số điện thoại</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${listUser}" varStatus="loop">
								<c:if test="${fn:contains(item.userRole, 'USER')}">
									<tr>
										<td style="text-align: center;">${loop.index+1}</td>
										<td style="text-align: center;">${item.email}</td>
										<td style="text-align: center;">${item.display_name}</td>
										<td style="text-align: center;">${item.address}</td>
										<td style="text-align: center;">${item.phone}</td>
									</tr>
								</c:if>
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