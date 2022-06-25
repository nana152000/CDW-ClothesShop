package clothesShop.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.service.ProductService;

@Controller(value = "homeControllerOfAdmin")
public class HomeController {

	@Autowired
	private ProductService productService;


	@RequestMapping(value = { "/quan-tri", "/quan-tri/san-pham" })
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView("admin/home");
		mav.addObject("listProduct", productService.listAll());
		return mav;
	}



}
