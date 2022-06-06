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
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value="/assets/user/img/logo/logo.png"></c:url>">

<!-- all css here -->
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/bootstrap.min.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/magnific-popup.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/animate.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/owl.carousel.min.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/themify-icons.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/pe-icon-7-stroke.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/meanmenu.min.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/bundle.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/style.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/responsive.css"></c:url>">
<script
	src="<c:url value="/assets/user/js/vendor/modernizr-2.8.3.min.js"></c:url>"></script>
</head>
<body>
	<!-- header -->
	<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>
	<!-- body  -->
	<decorator:body></decorator:body>
	<!-- footer -->
	<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>
	<!-- all js here -->
	<script src="<c:url value="/assets/user/js/vendor/jquery-1.12.0.min.js"></c:url>"></script>
	<script src="<c:url value="/assets/user/js/popper.js"></c:url>"></script>
	<script src="<c:url value="/assets/user/js/bootstrap.min.js"></c:url>"></script>
	<script src="<c:url value="/assets/user/js/jquery.magnific-popup.min.js"></c:url>"></script>
	<script src="<c:url value="/assets/user/js/isotope.pkgd.min.js"></c:url>"></script>
	<script src="<c:url value="/assets/user/js/imagesloaded.pkgd.min.js"></c:url>"></script>
	<script src="<c:url value="/assets/user/js/jquery.counterup.min.js"></c:url>"></script>
	<script src="<c:url value="/assets/user/js/waypoints.min.js"></c:url>"></script>
	<script src="<c:url value="/assets/user/js/ajax-mail.js"></c:url>"></script>
	<script src="<c:url value="/assets/user/js/owl.carousel.min.js"></c:url>"></script>
	<script src="<c:url value="/assets/user/js/plugins.js"></c:url>"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBMlLa3XrAmtemtf97Z2YpXwPLlimRK7Pk"></script>
	<script>
		function init() {
			var mapOptions = {
				zoom : 11,
				scrollwheel : false,
				center : new google.maps.LatLng(40.709896, -73.995481),
				styles : [ {
					"featureType" : "administrative.locality",
					"elementType" : "all",
					"stylers" : [ {
						"hue" : "#2c2e33"
					}, {
						"saturation" : 7
					}, {
						"lightness" : 19
					}, {
						"visibility" : "on"
					} ]
				}, {
					"featureType" : "landscape",
					"elementType" : "all",
					"stylers" : [ {
						"hue" : "#ffffff"
					}, {
						"saturation" : -100
					}, {
						"lightness" : 100
					}, {
						"visibility" : "simplified"
					} ]
				}, {
					"featureType" : "poi",
					"elementType" : "all",
					"stylers" : [ {
						"hue" : "#ffffff"
					}, {
						"saturation" : -100
					}, {
						"lightness" : 100
					}, {
						"visibility" : "off"
					} ]
				}, {
					"featureType" : "road",
					"elementType" : "geometry",
					"stylers" : [ {
						"hue" : "#bbc0c4"
					}, {
						"saturation" : -93
					}, {
						"lightness" : 31
					}, {
						"visibility" : "simplified"
					} ]
				}, {
					"featureType" : "road",
					"elementType" : "labels",
					"stylers" : [ {
						"hue" : "#bbc0c4"
					}, {
						"saturation" : -93
					}, {
						"lightness" : 31
					}, {
						"visibility" : "on"
					} ]
				}, {
					"featureType" : "road.arterial",
					"elementType" : "labels",
					"stylers" : [ {
						"hue" : "#bbc0c4"
					}, {
						"saturation" : -93
					}, {
						"lightness" : -2
					}, {
						"visibility" : "simplified"
					} ]
				}, {
					"featureType" : "road.local",
					"elementType" : "geometry",
					"stylers" : [ {
						"hue" : "#e9ebed"
					}, {
						"saturation" : -90
					}, {
						"lightness" : -8
					}, {
						"visibility" : "simplified"
					} ]
				}, {
					"featureType" : "transit",
					"elementType" : "all",
					"stylers" : [ {
						"hue" : "#e9ebed"
					}, {
						"saturation" : 10
					}, {
						"lightness" : 69
					}, {
						"visibility" : "on"
					} ]
				}, {
					"featureType" : "water",
					"elementType" : "all",
					"stylers" : [ {
						"hue" : "#e9ebed"
					}, {
						"saturation" : -78
					}, {
						"lightness" : 67
					}, {
						"visibility" : "simplified"
					} ]
				} ]
			};
			var mapElement = document.getElementById('footer-map');
			var map = new google.maps.Map(mapElement, mapOptions);
			var marker = new google.maps.Marker({
				position : new google.maps.LatLng(40.709896, -73.995481),
				map : map,
				icon : 'assets/img/icon-img/46.png',
				animation : google.maps.Animation.BOUNCE,
				title : 'Snazzy!'
			});
		}
		google.maps.event.addDomListener(window, 'load', init);
	</script>
	<script src="<c:url value="/assets/user/js/main.js"></c:url>"></script>
</body>
</html>