package clothesShop.controller.user;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.dto.user.CartDto;
import clothesShop.entity.Order;
import clothesShop.entity.User;
import clothesShop.service.IOrderService;

@Controller
public class CheckouController {
	@Autowired
	IOrderService orderService;

	@RequestMapping(value = "/thanh-toan", method = RequestMethod.GET)
	public ModelAndView checkoutPage(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView("user/checkout/checkout");

		Order order = new Order();
		User loginInf = (User) session.getAttribute("loginUser");
		if (loginInf != null) {
			order.setUser(loginInf.getUser());
			order.setPassword(loginInf.getPassword());
			order.setDisplay_name(loginInf.getDisplay_name());
			order.setPhone(loginInf.getPhone());
			order.setAddress(loginInf.getAddress());
		}

		mav.addObject("orders", order);
		return mav;
	}

	@RequestMapping(value = "/thanh-toan", method = RequestMethod.POST)
	public String loginPageIn(HttpServletRequest request, HttpSession session, @ModelAttribute("orders") Order order) {
		order.setQuantity((int)session.getAttribute("TotalQuantityCart"));
		order.setTotal((double)session.getAttribute("TotalPriceCart"));
		if (orderService.addOrder(order) > 0) {
			HashMap<Long, CartDto> carts = (HashMap<Long, CartDto>) session.getAttribute("Cart");
			orderService.addOrderDetail(carts);
		}
		session.removeAttribute("Cart");
		return "redirect:gio-hang";
	}
}
