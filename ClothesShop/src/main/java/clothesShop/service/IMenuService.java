package clothesShop.service;

import java.util.List;
import java.util.Map;

import clothesShop.entity.Menu;

public interface IMenuService {

	Map<Integer, String> listMenuId();

	void delete(Long id);

	Menu get(Long id);

	List<Menu> listAll();

	void save(Menu menu);

}
