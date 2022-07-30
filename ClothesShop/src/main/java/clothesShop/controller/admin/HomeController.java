package clothesShop.controller.admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.entity.User;
import clothesShop.service.IProductService;
import clothesShop.service.IUserService;

@Controller(value = "homeControllerOfAdmin")
public class HomeController {
	@Autowired
	private IUserService userService;
	@Autowired
	private IProductService productService;

	@RequestMapping(value = { "/quan-tri", "/quan-tri/san-pham" })
	public ModelAndView home(HttpSession session) {
		ModelAndView mav = new ModelAndView("admin/home");
		UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		User user = userService.getName(userDetails.getUsername());
		session.setAttribute("loginAdmin", user);
		mav.addObject("listProduct", productService.listAll());
		return mav;
	}

}
