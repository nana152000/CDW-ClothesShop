package clothesShop.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.entity.Order;
import clothesShop.entity.OrderDetail;
import clothesShop.service.IOrderService;

@Controller
public class BillController {
	@Autowired
	private IOrderService orderService;

	@RequestMapping("/quan-tri/hoa-don")
	public ModelAndView Bill() {
		List<Order> orders = orderService.listAll();
		ModelAndView mav = new ModelAndView("admin/bills");
		mav.addObject("listOrders", orders);

		List<OrderDetail> orderDetails = orderService.listAllOrderDetail();
		mav.addObject("listOrderDetails", orderDetails);
		return mav;
	}
	@RequestMapping("/hoa-don/delete")
	public String deleteCategoryForm(@RequestParam long id) {
		orderService.delete(id);
		return "redirect:/quan-tri/hoa-don";
	}
}
