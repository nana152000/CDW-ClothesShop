package clothesShop.controller.user;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

	@RequestMapping("/san-pham/keyword={keyword}/page={pageNum}")
	public ModelAndView viewPage(@PathVariable(name = "pageNum") int pageNum, @Param("sortField") String sortField,
			@Param("sortDir") String sortDir, @Param("keyword") String keyword) {
		ModelAndView mav = new ModelAndView("user/products/products");

		Page<Product> page = productService.listAll(pageNum, sortField, sortDir, keyword);
//		Page<Product> pageCategory1 = productService.findAllByCategory1(pageNum, sortField, sortDir);

		List<Product> listProducts = page.getContent();

		mav.addObject("currentPage", pageNum);
		mav.addObject("totalPages", page.getTotalPages());
		mav.addObject("totalItems", page.getTotalElements());

		mav.addObject("sortField", sortField);
		mav.addObject("sortDir", sortDir);

		mav.addObject("reverseSortDirAsc", sortDir = "asc");
		mav.addObject("reverseSortDirDesc", sortDir = "desc");

		mav.addObject("listProductPaging", listProducts);
		List<Product> listProduct = productService.listAll();
		mav.addObject("listProduct", listProduct);
		mav.addObject("listCategory", categorieService.listAll());

		mav.addObject("keyword", keyword);

		// Loại
		List<Product> listCategory1 = new ArrayList<>();
		List<Product> listCategory2 = new ArrayList<>();
		List<Product> listCategory3 = new ArrayList<>();
		List<Product> listCategory4 = new ArrayList<>();
		Long id;
		for (int i = 0; i < listProduct.size(); i++) {
			id = listProduct.get(i).getCategory().getId();
			if (id == 2) {
				listCategory2.add(listProduct.get(i));
			} else if (id == 1) {
				listCategory1.add(listProduct.get(i));
			} else if (id == 3) {
				listCategory3.add(listProduct.get(i));
			} else if (id == 4) {
				listCategory4.add(listProduct.get(i));
			}
		}

		mav.addObject("totalItemsCategory1", listCategory1.size());
		mav.addObject("totalItemsCategory2", listCategory2.size());
		mav.addObject("totalItemsCategory3", listCategory3.size());
		mav.addObject("totalItemsCategory4", listCategory4.size());
		
		//sp giảm giá
		mav.addObject("listAllSaleProduct", productService.listAllSaleProduct());

		return mav;
	}

	@RequestMapping("/san-pham")
	public ModelAndView viewProductPage(@RequestParam(value = "keyword", defaultValue = "") String keyword) {
		return viewPage(1, "name", "no", keyword);
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
