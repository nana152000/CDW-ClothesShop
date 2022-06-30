package clothesShop.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import clothesShop.entity.Category;
import clothesShop.repository.CategorieRepository;

public interface ICategorieService {

	Map<Integer, String> listCategoryId();

	void delete(Long id);

	Category get(Long id);

	List<Category> listAll();

	void save(Category categorie);

}
