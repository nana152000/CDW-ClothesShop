package clothesShop.controller.user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.entity.FavorateProduct;
import clothesShop.entity.Product;
import clothesShop.entity.User;
import clothesShop.service.IColorService;
import clothesShop.service.IFavorateProductService;
import clothesShop.service.IProductService;

@Controller
public class RestProductController {
	@Autowired
	IFavorateProductService favorateProductService;
	@Autowired
	IProductService productService;
	@Autowired
	IColorService colorService;

	@RequestMapping(value = "/yeu-thich", method = RequestMethod.GET)
	public ModelAndView wishlistPage() {
		ModelAndView mav = new ModelAndView("user/wishlist/wishlist");
		List<FavorateProduct> list = favorateProductService.listAll();
		List<String> listImage = new ArrayList<>();
		List<Product> listProduct = new ArrayList<>();
		for (FavorateProduct favorateProduct : list) {
			Product p = productService.get(favorateProduct.getProduct().getId());

			listImage.add(p.getColors().get(0).getImage().split(",")[0]);
		}
		mav.addObject("listImage", listImage);
		mav.addObject("listFavo", list);
		return mav;
	}

	@RequestMapping(value = "yeu-thich/{id}")
	public String addFavorateProduct(HttpServletRequest request, HttpSession session, @PathVariable Long id) {
		String msg = "";
		try {
			User user = (User) session.getAttribute("loginUser");
			FavorateProduct favorateProduct = new FavorateProduct();

			if (user == null) {
				msg = "Vui lòng đăng nhập rồi thao tác thử lại!";
			}
			Product product = productService.get(id);
			favorateProduct.setUser(user);
			favorateProduct.setProduct(product);
			favorateProduct.getUser().setId(user.getId());
			favorateProductService.save(favorateProduct);
		} catch (Exception ex) {
			msg = "Lỗi khi thêm sản phẩm yêu thích";
			System.out.println("Loi catch: " + ex.getMessage());
		}
		System.out.println(msg);
		return "redirect:" + request.getHeader("Referer");
	}
}
