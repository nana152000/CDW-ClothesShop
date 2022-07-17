package clothesShop.controller.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.repository.query.Param;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
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
	public ModelAndView viewPage(HttpServletRequest request, HttpSession session,
			@PathVariable(name = "pageNum") int pageNum, @Param("sortField") String sortField,
			@Param("sortDir") String sortDir, @Param("keyword") String keyword) {
		ModelAndView mav = new ModelAndView("user/products/products");

		Page<Product> page = productService.listAll(pageNum, sortField, sortDir, keyword);

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

		mav.addObject("keyword", keyword);
		session.setAttribute("keyword", keyword);
		System.out.println("key: " + keyword);
		System.out.println("total: " + page.getTotalPages());
		System.out.println("ele: " + page.getTotalElements());
		return mav;
	}

	@RequestMapping("/san-pham")
	public ModelAndView viewProductPage(HttpServletRequest request, HttpSession session,@RequestParam(value = "keyword", defaultValue = "") String keyword) {
		return viewPage(request, session, 1, "name", "no", keyword);
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
