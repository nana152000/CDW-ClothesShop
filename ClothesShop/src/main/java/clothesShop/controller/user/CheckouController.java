package clothesShop.controller.user;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.dto.user.CartDto;
import clothesShop.entity.Order;
import clothesShop.entity.User;
import clothesShop.service.IOrderService;
import clothesShop.service.IUserService;

@Controller
public class CheckouController {
	@Autowired
	IOrderService orderService;
	@Autowired
	private IUserService userService;

	@RequestMapping(value = "/thanh-toan", method = RequestMethod.GET)
	public ModelAndView checkoutPage(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView("user/checkout/checkout");
		UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		Order order = new Order();
		User loginInf = userService.getName(userDetails.getUsername());
		if (loginInf != null) {
			order.setUser(
					new User(loginInf.getId(), loginInf.getEmail(), loginInf.getPassword(), loginInf.getDisplay_name(),
							loginInf.getAddress(), loginInf.getPhone(), loginInf.isActive(), loginInf.getUserRole()));
		}

		mav.addObject("orders", order);
		return mav;
	}

	@RequestMapping(value = "/thanh-toan", method = RequestMethod.POST)
	public String loginPageIn(HttpServletRequest request, HttpSession session, @ModelAttribute("orders") Order order) {
		order.setQuantity((int) session.getAttribute("TotalQuantityCart"));
		order.setTotal((double) session.getAttribute("TotalPriceCart"));
		if (orderService.addOrder(order) > 0) {
			HashMap<Long, CartDto> carts = (HashMap<Long, CartDto>) session.getAttribute("Cart");
			orderService.addOrderDetail(carts);
		}
		session.removeAttribute("Cart");
		session.removeAttribute("TotalQuantityCart");
		session.removeAttribute("TotalPriceCart");

		return "redirect:gio-hang";
	}
}
