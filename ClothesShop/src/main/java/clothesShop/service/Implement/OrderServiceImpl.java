package clothesShop.service.Implement;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import clothesShop.dto.user.CartDto;
import clothesShop.entity.Order;
import clothesShop.entity.OrderDetail;
import clothesShop.repository.OrderDetailRepository;
import clothesShop.repository.OrderRepository;
import clothesShop.service.IOrderService;

@Service
@Transactional
public class OrderServiceImpl implements IOrderService {
	@Autowired
	OrderRepository orderRepository;
	@Autowired
	OrderDetailRepository orderDetailRepository;

	@Override
	public int addOrder(Order order) {
		orderRepository.save(order);
		List<Order> listOrder = orderRepository.findAll();
		return listOrder.size();

	}

	@Override
	public void addOrderDetail(HashMap<Long, CartDto> carts) {
		long idOrder = orderRepository.getIdMaxOrder();
		List<Order> listOrder = orderRepository.findAll();
		Order o = new Order();
		for (Order order : listOrder) {
			if (order.getId() == idOrder) {
				o = new Order(idOrder, o.getUser(), o.getPassword(), o.getDisplay_name(), o.getAddress(), o.getPhone(),
						o.getTotal(), o.getQuantity(), o.getNote());
			}
		}
		for (Map.Entry<Long, CartDto> itemCart : carts.entrySet()) {
			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setQuanity(itemCart.getValue().getQuanty());
			orderDetail.setTotal(itemCart.getValue().getTotalPrice());
			
			orderDetail.setOrder(o);
			orderDetail.setProduct(itemCart.getValue().getProduct());
			orderDetailRepository.save(orderDetail);
			System.out.println("jjj: " + orderDetail);
		}
	}
}
