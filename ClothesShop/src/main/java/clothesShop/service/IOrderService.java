package clothesShop.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import clothesShop.dto.user.CartDto;
import clothesShop.entity.Order;
import clothesShop.entity.OrderDetail;

@Service
public interface IOrderService {

	void addOrderDetail(HashMap<Long, CartDto> carts);

	int addOrder(Order order);

	List<Order> listAll();

	List<OrderDetail> listAllOrderDetail();

	void delete(Long id);
}
