package ClothesShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ClothesShop.Entity.User.Categories;
import ClothesShop.Entity.User.Slides;

@Service
public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlide();

	public List<Categories> GetDataCategories();
}