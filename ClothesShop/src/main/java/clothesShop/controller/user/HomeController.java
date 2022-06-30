package clothesShop.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.entity.Product;
import clothesShop.service.ICategorieService;
import clothesShop.service.IColorService;
import clothesShop.service.IMenuService;
import clothesShop.service.IProductService;
import clothesShop.service.ISlideService;

@Controller
public class HomeController {
	@Autowired
	private IProductService productService;
	@Autowired
	private ISlideService slideService;
	@Autowired
	private ICategorieService categorieService;
	@Autowired
	private IColorService colorService;
	@Autowired
	private IMenuService menuService;

	@RequestMapping(value = { "/trang-chu" }, method = RequestMethod.GET)
	public ModelAndView Index() {
		ModelAndView mav = new ModelAndView("user/home");
		mav.addObject("listSlide", slideService.listAll());
		mav.addObject("listCategory", categorieService.listAll());
		mav.addObject("listProduct", productService.listAll());
		mav.addObject("listColor", colorService.listAll());
		mav.addObject("listMenu", menuService.listAll());
		return mav;
	}

//	@RequestMapping(value = "/san-pham")
//	public ModelAndView Product(
////			@RequestParam(name = "name", required = false) String name,
////			@RequestParam("page") Optional<Integer> page, @RequestParam("size") Optional<Integer> size
//			Pageable pageable) {
//		ModelAndView mav = new ModelAndView("user/products/products");
////		int currentPage = page.orElse(1);
////		int pageSize = size.orElse(5);
//
//		 pageable = PageRequest.of(1, 5);
//		Page<Product> resultPage = null;
//
////		if (StringUtils.hasText(name)) {
////			resultPage = productService.findProductPaging(name, pageable);
////			mav.addObject("name", name);
////		} else {
//			resultPage = productService.findAll(pageable);
////		}
//
////		int totalPage = resultPage.getTotalPages();
////		if (totalPage > 0) {
////			int start = Math.max(1, currentPage - 2);
////			int end = Math.min(currentPage - 2, totalPage);
////			if (totalPage > 5) {
////				if (end == totalPage)
////					start = end - 5;
////				else if (start == 1)
////					end = start + 5;
////			}
////			List<Integer> pageNumbers = IntStream.rangeClosed(start, end).boxed().collect(Collectors.toList());
////			mav.addObject("pageNumbers", pageNumbers);
////		}
//		mav.addObject("listProductPaging", resultPage);
//		mav.addObject("listProduct", productService.listAll());
//		return mav;
//	}
	
	@RequestMapping("/san-pham/page={pageNum}")
	public ModelAndView viewPage(
	        @PathVariable(name = "pageNum") int pageNum) {
		ModelAndView mav = new ModelAndView("user/products/products");
	     
	    Page<Product> page = productService.listAll(pageNum);
	     
	    List<Product> listProducts = page.getContent();
	     
	    mav.addObject("currentPage", pageNum);
	    mav.addObject("totalPages", page.getTotalPages());
	    mav.addObject("totalItems", page.getTotalElements());
	    mav.addObject("listProductPaging", listProducts);
	    mav.addObject("listProduct", productService.listAll());
	    return mav;
	}
}
