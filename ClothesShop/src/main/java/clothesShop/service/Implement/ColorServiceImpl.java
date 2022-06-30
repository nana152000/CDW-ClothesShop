package clothesShop.service.Implement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import clothesShop.entity.Color;
import clothesShop.repository.ColorRepository;
import clothesShop.service.IColorService;

@Service
@Transactional
public class ColorServiceImpl implements IColorService{
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
}
