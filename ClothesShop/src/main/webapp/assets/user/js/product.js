/*$("a.linkSort").click(function() {
	$("a.linkSort")
		.removeClass('active');
	$(this).addClass('active');
});
$("div.btn-group > a").click(function() {
	$("div.btn-group > a")
		.removeClass('active');
	$(this).addClass('active');
});*/


function validateForm() {
	var x = document.forms["myForm"]["size"].value;
	var y = document.forms["myForm"]["color"].value;
	if (x == "" || x == null && y == "" || y == null) {
		alert("Name must be filled out");
		return false;
	}
}
