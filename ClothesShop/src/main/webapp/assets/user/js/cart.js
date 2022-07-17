$(".edit-quatity-cart").on("click", function() {
	var id = $(this).data("id");
	var quantity = $("#quantity-cart-" + id).val();
	alert(quantity);
	window.location = "EditCart/" + id + "/" + quantity;
});
