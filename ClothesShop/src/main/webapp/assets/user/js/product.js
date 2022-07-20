
function validateForm() {
	var x = document.forms["myForm"]["size"].value;
	var y = document.forms["myForm"]["color"].value;
	if (x == "" || x == null && y == "" || y == null) {
		document.getElementById('togglee').style.disabled = true;
		alert("Chọn size và màu sản phẩm");
		return false;
	} else {
		document.getElementById('togglee').style.disabled = false;
		return true;
	}
}
