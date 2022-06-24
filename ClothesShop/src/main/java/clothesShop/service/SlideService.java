package clothesShop.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import clothesShop.entity.Slide;
import clothesShop.repository.SlideRepository;

@Service
@Transactional
public class SlideService {
	@Autowired
	SlideRepository slideRepository;

	public void save(Slide slide) {
		slideRepository.save(slide);

	}

	public List<Slide> listAll() {
		return (List<Slide>) slideRepository.findAll();
	}

	public Slide get(Long id) {
		return slideRepository.findById(id).get();
	}

	public void delete(Long id) {
		slideRepository.deleteById(id);

	}

}