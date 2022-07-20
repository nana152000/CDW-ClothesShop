package clothesShop.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.service.ICategorieService;
import clothesShop.service.IColorService;
import clothesShop.service.IProductService;

@Controller
public class HomeController {
	@Autowired
	private IProductService productService;
	@Autowired
	private ICategorieService categorieService;
	@Autowired
	private IColorService colorService;
	
	
	
	@RequestMapping(value = { "/trang-chu" }, method = RequestMethod.GET)
	public ModelAndView Index() {
		ModelAndView mav = new ModelAndView("user/home");
		mav.addObject("listCategory", categorieService.listAll());
		mav.addObject("listProduct", productService.listAll());
		mav.addObject("listNewProduct", productService.listAllNewProduct());
		mav.addObject("listColor", colorService.listAll());
		return mav;
	}
	@RequestMapping(value = "/gioi-thieu", method = RequestMethod.GET)
	public ModelAndView introPage() {
		ModelAndView mav = new ModelAndView("user/introduces/introduce");
		return mav;
	}

	@RequestMapping(value = "/lien-he", method = RequestMethod.GET)
	public ModelAndView contactPage() {
		ModelAndView mav = new ModelAndView("user/contact/contact");
		return mav;
	}

	@RequestMapping(value = "/quen-mat-khau", method = RequestMethod.GET)
	public ModelAndView forgotPage() {
		ModelAndView mav = new ModelAndView("user/login-register/forgot-password");
		return mav;
	}


	@RequestMapping(value = "/yeu-thich", method = RequestMethod.GET)
	public ModelAndView wishlistPage() {
		ModelAndView mav = new ModelAndView("user/wishlist/wishlist");
		return mav;
	}
}
