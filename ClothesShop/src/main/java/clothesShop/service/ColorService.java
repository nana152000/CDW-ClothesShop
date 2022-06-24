package clothesShop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import clothesShop.entity.Color;
import clothesShop.repository.ColorRepository;

@Service
@Transactional
public class ColorService {
	@Autowired
	ColorRepository colorRepository;

	public void save(Color color) {
		colorRepository.save(color);

	}

	public List<Color> listAll() {
		return (List<Color>) colorRepository.findAll();
	}

	public Color get(Long id) {
		return colorRepository.findById(id).get();
	}

	public void delete(Long id) {
		colorRepository.deleteById(id);

	}
}
