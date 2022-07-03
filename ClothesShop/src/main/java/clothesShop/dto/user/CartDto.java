package clothesShop.dto.user;

import clothesShop.entity.Product;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartDto {
	private int quanty;
	private double totalPrice;
	private Product product;

	public CartDto() {

	}

	public CartDto(int quanty, double totalPrice, Product product) {
		this.quanty = quanty;
		this.totalPrice = totalPrice;
		this.product = product;
	}
}
