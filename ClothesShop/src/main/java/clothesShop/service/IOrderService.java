package clothesShop.service;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import clothesShop.dto.user.CartDto;
import clothesShop.entity.Order;
@Service
public interface IOrderService {

	void addOrderDetail(HashMap<Long, CartDto> carts);

	int addOrder(Order order);

}
