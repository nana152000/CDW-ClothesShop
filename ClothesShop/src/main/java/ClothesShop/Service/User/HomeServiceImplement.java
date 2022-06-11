package ClothesShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ClothesShop.DAO.User.CategoriesDAO;
import ClothesShop.DAO.User.MenusDAO;
import ClothesShop.DAO.User.ProductsDAO;
import ClothesShop.DAO.User.SlidesDAO;
import ClothesShop.Dto.User.ProductsDto;
import ClothesShop.Entity.User.Categories;
import ClothesShop.Entity.User.Menus;
import ClothesShop.Entity.User.Slides;

@Service
public class HomeServiceImplement implements IHomeService {
	@Autowired
	private SlidesDAO slidesDao;
	@Autowired
	private CategoriesDAO categoriesDao;
	@Autowired
	private MenusDAO menusDao;
	@Autowired
	private ProductsDAO productsDao;

	public List<Slides> GetDataSlide() {
		return slidesDao.GetDataSlide();
	}

	public List<Categories> GetDataCategories() {
		return categoriesDao.GetDataCategories();
	}

	public List<Menus> GetDataMenus() {
		return menusDao.GetDataMenus();
	}

	public List<ProductsDto> GetDataProducts() {
		List<ProductsDto> listProducts = productsDao.GetDataProducts();
		listProducts.get(0).getId_color();
		return listProducts;
	}

}
