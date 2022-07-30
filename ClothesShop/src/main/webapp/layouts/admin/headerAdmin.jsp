<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

	<a class="navbar-brand mr-1" href="<c:url value="/quan-tri"></c:url>">Clothes Shop</a>

	<button class="btn btn-link btn-sm text-white order-1 order-sm-0"
		id="sidebarToggle" href="#">
		<i class="fas fa-bars"></i>
	</button>

	<!-- Navbar Search -->
	<form
		class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
		<div class="input-group"></div>
	</form>

	<!-- Navbar -->
	<ul class="navbar-nav ml-auto ml-md-0">
		<li class="nav-item dropdown no-arrow"><a
			class="nav-link dropdown-toggle"
			href="<c:url value="/quan-tri/tai-khoan-admin"></c:url>"> <i
				class="fas fa-user-circle fa-fw"></i>&ensp;${loginAdmin.display_name}
		</a></li>
		<li class="nav-item dropdown no-arrow"><a
			class="nav-link dropdown-toggle"
			href="<c:url value="/dang-xuat"></c:url>">Đăng xuất</a></li>
	</ul>

</nav>