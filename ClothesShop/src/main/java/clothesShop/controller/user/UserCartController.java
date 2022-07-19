package clothesShop.controller.user;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.dto.user.CartDto;
import clothesShop.service.ICartService;

@Controller
public class UserCartController {
	@Autowired
	private ICartService cartService;

	@RequestMapping(value = "/gio-hang", method = RequestMethod.GET)
	public ModelAndView cartPage() {
		ModelAndView mav = new ModelAndView("user/cart/cart");
		return mav;
	}

	@RequestMapping(value = { "chi-tiet-san-pham/AddCart/{id}", "AddCart/{id}" })
	public String AddCart(HttpServletRequest request, HttpSession session, @PathVariable long id,
			@ModelAttribute("cart") CartDto cartDto) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDto>();
		}

		cart = cartService.addCart(id, cartDto.getSize(), cartDto.getColor(), cartDto.getQuantity(), cart);

		System.out.println("size: " + cartDto.getSize());
		System.out.println("color: " + cartDto.getColor());
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantityCart", cartService.totalQuantity(cart));
		session.setAttribute("TotalPriceCart", cartService.totalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "EditCart/{id}/{quantity}")
	public String EditCart(HttpServletRequest request, HttpSession session, @PathVariable long id,
			@PathVariable int quantity) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartService.editCart(id, quantity, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantityCart", cartService.totalQuantity(cart));
		session.setAttribute("TotalPriceCart", cartService.totalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "DeleteCart/{id}")
	public String DeleteCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartService.deleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantityCart", cartService.totalQuantity(cart));
		session.setAttribute("TotalPriceCart", cartService.totalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}
}
