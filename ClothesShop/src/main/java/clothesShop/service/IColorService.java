package clothesShop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import clothesShop.entity.Color;

@Service
public interface IColorService {

	void delete(Long id);

	Color get(Long id);

	List<Color> listAll();

	void save(Color color);

	List<String> listImageById(Long id);

	String getImageById(Long id);

}
