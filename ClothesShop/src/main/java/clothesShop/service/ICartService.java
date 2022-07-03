package clothesShop.service;

import java.util.HashMap;

import clothesShop.dto.user.CartDto;

public interface ICartService {

	double totalPrice(HashMap<Long, CartDto> cart);

	int totalQuanty(HashMap<Long, CartDto> cart);

	HashMap<Long, CartDto> deleteCart(long id, HashMap<Long, CartDto> cart);

	HashMap<Long, CartDto> editCart(long id, int quanty, HashMap<Long, CartDto> cart);

	HashMap<Long, CartDto> addCart(long id, HashMap<Long, CartDto> cart);

}
