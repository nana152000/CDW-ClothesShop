package clothesShop.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import clothesShop.entity.Menu;
import clothesShop.repository.MenuRepository;

@Service
@Transactional
public class MenuService {
	@Autowired
	MenuRepository menuRepository;

	public void save(Menu menu) {
		menuRepository.save(menu);

	}

	public List<Menu> listAll() {
		return (List<Menu>) menuRepository.findAll();
	}

	public Menu get(Long id) {
		return menuRepository.findById(id).get();
	}

	public void delete(Long id) {
		menuRepository.deleteById(id);

	}

	public Map<Integer, String> listMenuId() {
		Map<Integer, String> listMenuId = new HashMap<>();
		for (int i = 0; i < menuRepository.listId().size(); i++) {
			listMenuId.put((i + 1), menuRepository.listId().get(i));
		}
		return listMenuId;
	}

}
