package clothesShop.service.Implement;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import clothesShop.entity.Color;
import clothesShop.repository.ColorRepository;
import clothesShop.service.IColorService;

@Service
@Transactional
public class ColorServiceImpl implements IColorService {
	@Autowired
	ColorRepository colorRepository;

	@Override
	public void save(Color color) {
		colorRepository.save(color);

	}

	@Override
	public List<Color> listAll() {
		return (List<Color>) colorRepository.findAll();
	}

	@Override
	public Color get(Long id) {
		return colorRepository.findById(id).get();
	}

	@Override
	public void delete(Long id) {
		colorRepository.deleteById(id);

	}

	@Override
	public List<String> listImageById(Long id) {
		List<String> listImageById = new ArrayList<>();
		List<Color> listColor = colorRepository.findAll();
		for (Color color : listColor) {
			if (color.getProduct().getId() == id) {
				List<String> listImage = Arrays.asList(color.getImage().split("\\s*,\\s*"));
				for (String image : listImage) {
					listImageById.add(image);
				}
			}
		}
		return listImageById;

	}
}
