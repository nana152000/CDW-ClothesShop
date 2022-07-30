<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<title>404</title>
</head>
<body>
	<div class="container-fluid">
		<h1 class="display-1" style="font-size: 510px; padding-left: 290px;margin: 0">404</h1>
		<p class="lead" style="padding-left: 300px;font-size: 50px;">
			Page not found. You can <a href="<c:url value="/"></c:url>">return
				home</a>.
		</p>

	</div>
</body>
</html>