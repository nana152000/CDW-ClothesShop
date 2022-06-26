package clothesShop.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//import clothesShop.dao.user.CategoriesDAO;
//import clothesShop.dao.user.MenusDAO;
//import clothesShop.dao.user.ProductsDAO;
//import clothesShop.dao.user.SlidesDAO;
import clothesShop.dto.user.ProductsDto;
import clothesShop.entity.user.Categories;
import clothesShop.entity.user.Menus;
import clothesShop.entity.user.Slides;

@Service
public class HomeServiceImplement implements IHomeService {

	@Override
	public List<Slides> GetDataSlide() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Categories> GetDataCategories() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Menus> GetDataMenus() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductsDto> GetDataProducts() {
		// TODO Auto-generated method stub
		return null;
	}
//	@Autowired
//	private SlidesDAO slidesDao;
//	@Autowired
//	private CategoriesDAO categoriesDao;
//	@Autowired
//	private MenusDAO menusDao;
//	@Autowired
//	private ProductsDAO productsDao;
//
//	public List<Slides> GetDataSlide() {
//		return slidesDao.GetDataSlide();
//	}
//
//	public List<Categories> GetDataCategories() {
//		return categoriesDao.GetDataCategories();
//	}
//
//	public List<Menus> GetDataMenus() {
//		return menusDao.GetDataMenus();
//	}
//
//	public List<ProductsDto> GetDataProducts() {
//		List<ProductsDto> listProducts = productsDao.GetDataProducts();
//		listProducts.get(0).getId_color();
//		return listProducts;
//	}

}
