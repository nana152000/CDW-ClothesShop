package clothesShop.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.dto.user.PaginatesDto;
import clothesShop.service.user.CategoryServiceImplement;
import clothesShop.service.user.PaginateServiceImplement;

@Controller
public class CategoryController extends BaseController {

	@Autowired
	private CategoryServiceImplement categoryService;

	@Autowired
	private PaginateServiceImplement paginateService;

	private int totalProductsPage = 9;

	@RequestMapping(value = "/san-pham/{id}")
	public ModelAndView Product(@PathVariable String id) {
		_mvShare.setViewName("user/products/products");
		_mvShare.addObject("products", _homeService.GetDataProducts());
		int totalData = categoryService.GetAllProductsByID(Integer.parseInt(id)).size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage, 1);
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", categoryService.GetDataProductsPaginate(Integer.parseInt(id),
				paginateInfo.getStart(), totalProductsPage));
		return _mvShare;
	}

	@RequestMapping(value = "/san-pham/{id}/{currentPage}")
	public ModelAndView Product(@PathVariable String id, @PathVariable String currentPage) {
		_mvShare.setViewName("user/products/products");
		_mvShare.addObject("products", _homeService.GetDataProducts());
		int totalData = categoryService.GetAllProductsByID(Integer.parseInt(id)).size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", categoryService.GetDataProductsPaginate(Integer.parseInt(id),
				paginateInfo.getStart(), totalProductsPage));
		return _mvShare;
	}
}