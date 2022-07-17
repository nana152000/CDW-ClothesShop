$("a.linkSort").click(function() {
	$("a.linkSort")
		.removeClass('active');
	$(this).addClass('active');
});
$("div.btn-group > a").click(function() {
	$("div.btn-group > a")
		.removeClass('active');
	$(this).addClass('active');
});