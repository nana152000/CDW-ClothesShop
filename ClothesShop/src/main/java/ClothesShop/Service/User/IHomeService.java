package ClothesShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ClothesShop.Dto.User.ProductsDto;
import ClothesShop.Entity.User.Categories;
import ClothesShop.Entity.User.Menus;
import ClothesShop.Entity.User.Slides;

@Service
public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlide();

	public List<Categories> GetDataCategories();

	public List<Menus> GetDataMenus();

	public List<ProductsDto> GetDataProducts();
}