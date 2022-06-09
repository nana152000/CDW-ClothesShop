package ClothesShop.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ClothesShop.DAO.User.SlidesDAO;
import ClothesShop.Service.User.HomeServiceImplement;

@Controller
public class HomeController {
	@Autowired
	HomeServiceImplement homeService;

	// ModelAndView 2 phan, view tra ve cac giao dien jsp
	// model set duwx lieu truyen ve cho view
	// co 2 cach:
	// ModelAndView mv=new ModelAndView("user/index");
	// mv.setViewName("user/index");
	@RequestMapping(value = { "/", "/trang-chu" }, method = RequestMethod.GET)
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView("user/index");
		mv.addObject("slides", homeService.GetDataSlide());
		return mv;
	}

	@RequestMapping(value = "/product")
	public ModelAndView Product() {
		ModelAndView mv = new ModelAndView("user/product");
		return mv;
	}
}
