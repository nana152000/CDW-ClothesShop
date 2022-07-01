package clothesShop.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.service.ICategorieService;
import clothesShop.service.IColorService;
import clothesShop.service.IMenuService;
import clothesShop.service.IProductService;
import clothesShop.service.ISlideService;

@Controller
public class HomeController {
	@Autowired
	private IProductService productService;
	@Autowired
	private ISlideService slideService;
	@Autowired
	private ICategorieService categorieService;
	@Autowired
	private IColorService colorService;
	@Autowired
	private IMenuService menuService;

	@RequestMapping(value = { "/trang-chu" }, method = RequestMethod.GET)
	public ModelAndView Index() {
		ModelAndView mav = new ModelAndView("user/home");
		mav.addObject("listSlide", slideService.listAll());
		mav.addObject("listCategory", categorieService.listAll());
		mav.addObject("listProduct", productService.listAll());
		mav.addObject("listColor", colorService.listAll());
		mav.addObject("listMenu", menuService.listAll());
		return mav;
	}
	@RequestMapping(value = "/gioi-thieu", method = RequestMethod.GET)
	public ModelAndView introPage() {
		ModelAndView mav = new ModelAndView("user/introduces/introduce");
		mav.addObject("listMenu", menuService.listAll());
		return mav;
	}

	@RequestMapping(value = "/lien-he", method = RequestMethod.GET)
	public ModelAndView contactPage() {
		ModelAndView mav = new ModelAndView("user/contact/contact");
		mav.addObject("listMenu", menuService.listAll());
		return mav;
	}

	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		ModelAndView mav = new ModelAndView("user/login-register/login");
		mav.addObject("listMenu", menuService.listAll());
		return mav;
	}

	@RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
	public ModelAndView regPage() {
		ModelAndView mav = new ModelAndView("user/login-register/register");
		mav.addObject("listMenu", menuService.listAll());
		return mav;
	}

	@RequestMapping(value = "/quen-mat-khau", method = RequestMethod.GET)
	public ModelAndView forgotPage() {
		ModelAndView mav = new ModelAndView("user/login-register/forgot-password");
		mav.addObject("listMenu", menuService.listAll());
		return mav;
	}

	@RequestMapping(value = "/gio-hang", method = RequestMethod.GET)
	public ModelAndView cartPage() {
		ModelAndView mav = new ModelAndView("user/cart/cart");
		mav.addObject("listMenu", menuService.listAll());
		return mav;
	}

	@RequestMapping(value = "/thanh-toan", method = RequestMethod.GET)
	public ModelAndView checkoutPage() {
		ModelAndView mav = new ModelAndView("user/checkout/checkout");
		mav.addObject("listMenu", menuService.listAll());
		return mav;
	}

	@RequestMapping(value = "/yeu-thich", method = RequestMethod.GET)
	public ModelAndView wishlistPage() {
		ModelAndView mav = new ModelAndView("user/wishlist/wishlist");
		mav.addObject("listMenu", menuService.listAll());
		return mav;
	}
}
