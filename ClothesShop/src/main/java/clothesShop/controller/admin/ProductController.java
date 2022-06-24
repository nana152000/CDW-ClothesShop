package clothesShop.controller.admin;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.entity.Product;
import clothesShop.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	ProductService productService;

	@RequestMapping("/quan-tri/new")
	public ModelAndView newProductForm(Map<String, Object> model) {
		ModelAndView mav = new ModelAndView("admin/home");
		Product product = new Product();
		model.put("product", product);
		return mav;
	}

	@RequestMapping(value = "/quan-tri/save", method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute("product") Product product) {
		productService.save(product);
		return "redirect:/quan-tri";
	}

	@RequestMapping("/quan-tri/edit")
	public ModelAndView editProductForm(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("admin/actionSlides/editSlide");
		Product product = productService.get(id);
		mav.addObject("product", product);
		return mav;
	}

	@RequestMapping("/delete")
	public String deleteProductForm(@RequestParam long id) {
		productService.delete(id);
		return "redirect:quan-tri";
	}

}