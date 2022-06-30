package clothesShop.service.Implement;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import clothesShop.entity.Slide;
import clothesShop.repository.SlideRepository;
import clothesShop.service.ISlideService;

@Service
@Transactional
public class SlideServiceImpl implements ISlideService{
	@Autowired
	SlideRepository slideRepository;

	@Override
	public void save(Slide slide) {
		slideRepository.save(slide);

	}

	@Override
	public List<Slide> listAll() {
		return (List<Slide>) slideRepository.findAll();
	}

	@Override
	public Slide get(Long id) {
		return slideRepository.findById(id).get();
	}

	@Override
	public void delete(Long id) {
		slideRepository.deleteById(id);

	}

}