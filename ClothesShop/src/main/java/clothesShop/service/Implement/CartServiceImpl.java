package clothesShop.service.Implement;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import clothesShop.dto.user.CartDto;
import clothesShop.entity.Product;
import clothesShop.service.ICartService;
import clothesShop.service.IProductService;

@Service
@Transactional
public class CartServiceImpl implements ICartService {
	@Autowired
	IProductService productService;
	HashMap<Long, Long> listIndex;

	@Override
	public HashMap<Long, CartDto> addCart(long id, String size, String color, int quanty, HashMap<Long, CartDto> cart) {
		CartDto itemCart = new CartDto();
		Product product = productService.get(id);
		CartDto cartDto = new CartDto();
		for (Entry<Long, CartDto> item : cart.entrySet()) {
			if (item.getKey() == id) {
				cartDto = new CartDto(item.getValue().getColor(), item.getValue().getSize(),
						item.getValue().getQuantity(), item.getValue().getTotalPrice(), item.getValue().getProduct());
			}
		}
		if (product != null && cart.containsKey(id) && cartDto.getSize().equals(size)
				&& cartDto.getColor().equals(color)) {
			itemCart = cart.get(id);
			itemCart.setQuantity(itemCart.getQuantity() + quanty);
			itemCart.setTotalPrice(itemCart.getQuantity() * itemCart.getProduct().getPrice());
		} else if (product != null && cart.containsKey(id) && cartDto.getSize().equals(size) == false
				&& (cartDto.getColor().equals(color))) {
			itemCart = cart.get(id);
			String sizeInitial = itemCart.getSize();
			itemCart.setSize(sizeInitial.concat("\n" + size));
			itemCart.setColor(color);
			itemCart.setProduct(product);
			itemCart.setQuantity(quanty);
			itemCart.setTotalPrice(product.getPrice());
			System.out.println("ok");
		} else {
			itemCart.setSize(size);
			itemCart.setColor(color);
			itemCart.setProduct(product);
			itemCart.setQuantity(quanty);
			itemCart.setTotalPrice(product.getPrice() * quanty);
		}
		cart.put(id, itemCart);
		return cart;
	}

	@Override
	public HashMap<Long, CartDto> editCart(long id, int quanty, HashMap<Long, CartDto> cart) {
		if (cart == null) {
			return cart;
		}
		CartDto itemCart = new CartDto();
		if (cart.containsKey(id)) {
			itemCart = cart.get(id);
			if (quanty <= 0) {
				cart.remove(id);
			} else {
				itemCart.setQuantity(quanty);
				double totalPrice = quanty * itemCart.getProduct().getPrice();
				itemCart.setTotalPrice(totalPrice);
			}
		}
		cart.put(id, itemCart);
		return cart;
	}

	@Override
	public HashMap<Long, CartDto> deleteCart(long id, HashMap<Long, CartDto> cart) {
		if (cart == null) {
			return cart;
		}
		if (cart.containsKey(id)) {
			cart.remove(id);
		}
		return cart;
	}

	@Override
	public int totalQuantity(HashMap<Long, CartDto> cart) {
		int totalQuantity = 0;
		for (Map.Entry<Long, CartDto> itemCart : cart.entrySet()) {
			totalQuantity += itemCart.getValue().getQuantity();
		}
		return totalQuantity;
	}

	@Override
	public double totalPrice(HashMap<Long, CartDto> cart) {
		double totalPrice = 0;
		for (Map.Entry<Long, CartDto> itemCart : cart.entrySet()) {
			totalPrice += itemCart.getValue().getTotalPrice();
		}
		return totalPrice;
	}
}
