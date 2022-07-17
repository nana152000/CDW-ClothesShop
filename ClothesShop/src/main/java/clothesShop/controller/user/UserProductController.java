package clothesShop.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.entity.Product;
import clothesShop.service.ICategorieService;
import clothesShop.service.IColorService;
import clothesShop.service.IProductService;

@Controller
public class UserProductController {
	@Autowired
	private IProductService productService;
	@Autowired
	private ICategorieService categorieService;
	@Autowired
	private IColorService colorService;

	@RequestMapping("/san-pham/page={pageNum}")
	public ModelAndView viewPage(@PathVariable(name = "pageNum") int pageNum,
			@Param("sortField") String sortField, @Param("sortDir") String sortDir) {
		ModelAndView mav = new ModelAndView("user/products/products");

		Page<Product> page = productService.listAll(pageNum, sortField, sortDir);

		List<Product> listProducts = page.getContent();

		mav.addObject("currentPage", pageNum);
		mav.addObject("totalPages", page.getTotalPages());
		mav.addObject("totalItems", page.getTotalElements());

		mav.addObject("sortField", sortField);
		mav.addObject("sortDir", sortDir);

		mav.addObject("reverseSortDirAsc", sortDir = "asc");
		mav.addObject("reverseSortDirDesc", sortDir = "desc");
		
		mav.addObject("listProductPaging", listProducts);
		mav.addObject("listProduct", productService.listAll());
		mav.addObject("listCategory", categorieService.listAll());
//		mav.addObject("seachKeyword", productService.listAll(keyword));
		return mav;
	}

	@RequestMapping("/san-pham")
	public ModelAndView viewProductPage() {
		return viewPage(1, "name", "no");
	}

	@RequestMapping("/chi-tiet-san-pham/{id}")
	public ModelAndView productDetail(@PathVariable(name = "id") Long id) {
		ModelAndView mav = new ModelAndView("user/products/product-details");
		mav.addObject("productDetail", productService.get(id));
		mav.addObject("listImageById", colorService.listImageById(id));
		mav.addObject("idProduct", id);
		return mav;
	}

}
