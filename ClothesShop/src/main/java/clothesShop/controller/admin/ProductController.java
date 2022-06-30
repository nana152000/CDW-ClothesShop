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
import clothesShop.service.ICategorieService;
import clothesShop.service.IProductService;

@Controller
public class ProductController {
	@Autowired
	private IProductService productService;
	@Autowired
	private ICategorieService categorieService;

	@RequestMapping("/quan-tri/san-pham/new")
	public ModelAndView newProductForm(Map<String, Object> model) {
		ModelAndView mav = new ModelAndView("admin/actionProducts/newProduct");
		mav.addObject("listCategoryId", categorieService.listCategoryId());
		Product product = new Product();
		model.put("product", product);
		return mav;
	}

	@RequestMapping(value = "/quan-tri/san-pham/save", method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute("product") Product product) {
		productService.save(product);
		return "redirect:/quan-tri";
	}

	@RequestMapping("/quan-tri/san-pham/edit")
	public ModelAndView editProductForm(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("admin/actionProducts/editProduct");
		Product product = productService.get(id);
		mav.addObject("product", product);
		mav.addObject("listCategoryId", categorieService.listCategoryId());
		return mav;
	}

	@RequestMapping("/san-pham/delete")
	public String deleteProductForm(@RequestParam long id) {
		productService.delete(id);
		return "redirect:/quan-tri";
	}

}