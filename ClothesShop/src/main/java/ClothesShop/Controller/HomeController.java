package ClothesShop.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	//ModelAndView 2 phan, view tra ve cac giao dien jsp
		//model set duwx lieu truyen ve cho view
		//co 2 cach:
		//ModelAndView mv=new ModelAndView("user/index");
		//mv.setViewName("user/index");
	@RequestMapping(value = { "/", "/trang-chu" }, method = RequestMethod.GET)
	public ModelAndView Index() {
		ModelAndView mv=new ModelAndView("user/index");
		return mv;
	}
	
	@RequestMapping(value = "/products")
	public ModelAndView Products() {
		ModelAndView mv=new ModelAndView("user/products");
		return mv;
	}
}
