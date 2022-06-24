package clothesShop.controller.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.entity.Category;
import clothesShop.entity.Product;
import clothesShop.service.CategorieService;
import clothesShop.service.ProductService;

@Controller(value = "homeControllerOfAdmin")
public class HomeController {

	@Autowired
	private ProductService productService;
	@Autowired
	private CategorieService categorieService;

	@RequestMapping(value = { "/quan-tri", "/quan-tri/san-pham" })
	public ModelAndView home() {
		List<Product> products = productService.listAll();

		ModelAndView mav = new ModelAndView("admin/home");
		mav.addObject("listProduct", products);
		Product product = new Product();
		mav.addObject("product", product);
		return mav;
	}

}
