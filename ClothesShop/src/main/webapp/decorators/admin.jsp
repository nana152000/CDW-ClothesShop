<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><decorator:title default="Master-Layout"></decorator:title></title>
<!-- Custom fonts for this template-->
<link
	href="<c:url value='/assets/admin/vendor/fontawesome-free/css/all.min.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/assets/admin/css/style.css'/>"
	rel="stylesheet" type="text/css">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/e1bf9f91fa.js"
	crossorigin="anonymous"></script>

<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>

<!-- Page level plugin CSS-->
<link
	href="<c:url value='/assets/admin/vendor/datatables/dataTables.bootstrap4.css'/>"
	rel="stylesheet" type="text/css">

<!-- Custom styles for this template-->
<link href="<c:url value='/assets/admin/css/sb-admin.css'/>"
	rel="stylesheet" type="text/css">

</head>
<body id="page-top">
	<!-- header -->
	<%@include file="/layouts/admin/headerAdmin.jsp"%>
	<!-- body  -->
	<div id="wrapper">
		<!-- sidebar -->
		<%@include file="/layouts/admin/sidebar.jsp"%>
		<div id="content-wrapper">
			<decorator:body></decorator:body>
		</div>
	</div>
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	<!-- Bootstrap core JavaScript-->
	<script
		src="<c:url value='/assets/admin/vendor/jquery/jquery.min.js'/>"
		type="text/javascript"></script>
	<script
		src="<c:url value='/assets/admin/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"
		type="text/javascript"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="<c:url value='/assets/admin/vendor/jquery-easing/jquery.easing.min.js'/>"
		type="text/javascript"></script>

	<!-- Page level plugin JavaScript-->
	<script
		src="<c:url value='/assets/admin/vendor/chart.js/Chart.min.js'/>"
		type="text/javascript"></script>
	<script
		src="<c:url value='/assets/admin/vendor/datatables/jquery.dataTables.js'/>"
		type="text/javascript"></script>
	<script
		src="<c:url value='/assets/admin/vendor/datatables/dataTables.bootstrap4.js'/>"
		type="text/javascript"></script>



	<!-- Custom scripts for all pages-->
	<script src="<c:url value='/assets/admin/js/sb-admin.min.js'/>"
		type="text/javascript"></script>

	<!-- Demo scripts for this page-->
	<script src="<c:url value='/assets/admin/js/demo/datatables-demo.js'/>"
		type="text/javascript"></script>
	<script src="<c:url value='/assets/admin/js/demo/chart-area-demo.js'/>"
		type="text/javascript"></script>


</body>
</html>