package clothesShop.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController {

	// ModelAndView 2 phan, view tra ve cac giao dien jsp
	// model set duwx lieu truyen ve cho view
	// co 2 cach:
	// ModelAndView mv=new ModelAndView("user/index");
	// mv.setViewName("user/index");
	@RequestMapping(value = {"/trang-chu" }, method = RequestMethod.GET)
	public ModelAndView Index() {
		_mvShare.addObject("slides", _homeService.GetDataSlide());
		_mvShare.addObject("categories", _homeService.GetDataCategories());
		_mvShare.addObject("products", _homeService.GetDataProducts());
		_mvShare.setViewName("user/home");
		return _mvShare;
	}

	@RequestMapping(value = "/san-pham")
	public ModelAndView Product() {
		_mvShare.addObject("categories", _homeService.GetDataCategories());
		_mvShare.addObject("products", _homeService.GetDataProducts());
		_mvShare.setViewName("user/products/products");
		return _mvShare;
	}
}
