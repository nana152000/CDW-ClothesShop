package clothesShop.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.service.CategorieService;
import clothesShop.service.ColorService;
import clothesShop.service.MenuService;
import clothesShop.service.ProductService;
import clothesShop.service.SlideService;

@Controller
public class HomeController {
	@Autowired
	private ProductService productService;
	@Autowired
	private SlideService slideService;
	@Autowired
	private CategorieService categorieService;
	@Autowired
	private ColorService colorService;
	@Autowired
	private MenuService menuService;

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

	@RequestMapping(value = "/san-pham")
	public ModelAndView Product() {
		ModelAndView mav = new ModelAndView("user/products/products");
		mav.addObject("listCategory", categorieService.listAll());
		mav.addObject("listProduct", productService.listAll());
		return mav;
	}
}
