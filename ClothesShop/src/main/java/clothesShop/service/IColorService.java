package clothesShop.service;

import java.util.List;

import clothesShop.entity.Color;

public interface IColorService {

	void delete(Long id);

	Color get(Long id);

	List<Color> listAll();

	void save(Color color);

}
