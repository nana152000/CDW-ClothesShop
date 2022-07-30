package clothesShop.controller.user;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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

import clothesShop.entity.Order;
import clothesShop.entity.OrderDetail;
import clothesShop.entity.User;
import clothesShop.service.IOrderService;
import clothesShop.service.IUserService;

@Controller
public class AccountController {
	@Autowired
	private IUserService userService;
	@Autowired
	private IOrderService orderService;

	@RequestMapping("/dang-ky")
	public ModelAndView register(Map<String, Object> model) {
		ModelAndView mav = new ModelAndView("user/login-register/register");
		User user = new User();
		model.put("user", user);
		return mav;
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveRegister(@ModelAttribute("user") User user) {
		user.setUserRole("USER");
		user.setActive(true);
		userService.save(user);
		return "redirect:/";
	}

	@RequestMapping(value = "/dang-nhap")
	public ModelAndView loginPage(@ModelAttribute("user") User user) {
		ModelAndView mav = new ModelAndView("user/login-register/login");
		return mav;
	}

	@RequestMapping(value = "/404", method = RequestMethod.GET)
	public ModelAndView deny() {
		ModelAndView mav = new ModelAndView("404/404");
		return mav;
	}

//	TAI KHOAN
	@RequestMapping(value = "/tai-khoan", method = RequestMethod.GET)
	public ModelAndView accountPage(HttpSession session) {
		ModelAndView mav = new ModelAndView("user/account/account");
		UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		User user = userService.getName(userDetails.getUsername());

		System.out.println("userLogin: " + user);
		mav.addObject("user", user);
		session.setAttribute("loginUser", user);
		List<OrderDetail> orderDetails = orderService.listAllOrderDetail();

		List<Order> orders = orderService.listAll();

		double totalOrder = 0;
		List<OrderDetail> listOrderDetailUser = new ArrayList<>();
		for (Order order : orders) {
			if (order.getUser().getEmail().equals(user.getEmail())) {
				totalOrder += order.getTotal();
				for (OrderDetail orderDetail : orderDetails) {
					if (order.getId() == orderDetail.getOrder().getId()) {
						listOrderDetailUser.add(orderDetail);
					}
				}
			}
		}
		mav.addObject("listOrderDetails", listOrderDetailUser);
		mav.addObject("totalOrder", totalOrder);
		return mav;
	}

	@RequestMapping(value = "/tai-khoan/save", method = RequestMethod.POST)
	public String saveAccount(@ModelAttribute("user") User user) {
		userService.saveInf(user);
		return "redirect:/";
	}
}
