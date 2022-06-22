package clothesShop.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import clothesShop.dto.user.ProductsDto;
import clothesShop.entity.user.Categories;
import clothesShop.entity.user.Menus;
import clothesShop.entity.user.Slides;

@Service
public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlide();

	public List<Categories> GetDataCategories();

	public List<Menus> GetDataMenus();

	public List<ProductsDto> GetDataProducts();
}