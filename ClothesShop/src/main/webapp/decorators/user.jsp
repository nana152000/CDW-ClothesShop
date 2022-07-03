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

<link href="<c:url value='/assets/user/img/logo/logo.png'/>"
	rel="shortcut icon" type="image/x-icon">
<!-- all css here -->
<link href="<c:url value='/assets/user/css/bootstrap.min.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/assets/user/css/magnific-popup.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/assets/user/css/animate.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/assets/user/css/owl.carousel.min.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/assets/user/css/themify-icons.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/assets/user/css/pe-icon-7-stroke.css'/>"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="<c:url value='/assets/user/css/icofont.css'/>" rel="stylesheet"
	type="text/css">
<link href="<c:url value='/assets/user/css/meanmenu.min.css'/>"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="<c:url value='/assets/user/css/easyzoom.css'/>" rel="stylesheet"
	type="text/css">
<link href="<c:url value='/assets/user/css/bundle.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/assets/user/css/style.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/assets/user/css/responsive.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/assets/user/css/style-css.css'/>"
	rel="stylesheet" type="text/css">

<script
	src="<c:url value='/assets/user/js/vendor/modernizr-2.8.3.min.js'/>"
	type="text/javascript"></script>
</head>
<body>
	<!-- header -->
	<%@include file="/layouts/user/header.jsp"%>
	<!-- body  -->
	<decorator:body></decorator:body>
	<!-- footer -->
	<%@include file="/layouts/user/footer.jsp"%>
	<!-- all js here -->

	<script
		src="<c:url value='/assets/user/js/vendor/jquery-1.12.0.min.js'/>"
		type="text/javascript"></script>
	<script src="<c:url value='/assets/user/js/popper.js'/>"
		type="text/javascript"></script>
	<script src="<c:url value='/assets/user/js/bootstrap.min.js'/>"
		type="text/javascript"></script>
	<script
		src="<c:url value='/assets/user/js/jquery.magnific-popup.min.js'/>"
		type="text/javascript"></script>
	<script src="<c:url value='/assets/user/js/isotope.pkgd.min.js'/>"
		type="text/javascript"></script>
	<script src="<c:url value='/assets/user/js/imagesloaded.pkgd.min.js'/>"
		type="text/javascript"></script>
	<script src="<c:url value='/assets/user/js/jquery.counterup.min.js'/>"
		type="text/javascript"></script>
	<script src="<c:url value='/assets/user/js/waypoints.min.js'/>"
		type="text/javascript"></script>
	<script src="<c:url value='/assets/user/js/ajax-mail.js'/>"
		type="text/javascript"></script>
	<script src="<c:url value='/assets/user/js/owl.carousel.min.js'/>"
		type="text/javascript"></script>
	<script src="<c:url value='/assets/user/js/plugins.js'/>"
		type="text/javascript"></script>
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
	<script src="<c:url value='/assets/user/js/main.js'/>"
		type="text/javascript"></script>
	<script src="<c:url value='/assets/user/js/cart.js'/>"
		type="text/javascript"></script>


</body>
</html>