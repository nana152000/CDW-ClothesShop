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
}
