package clothesShop.service.admin.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import clothesShop.entity.admin.Slide;
import clothesShop.repository.SlidesRepository;

@Service
@Transactional
public class SlidesService {
	@Autowired
	SlidesRepository repo;

	public void save(Slide slide) {
		repo.save(slide);

	}

	public List<Slide> listAll() {
		return (List<Slide>) repo.findAll();
	}

	public Slide get(Long id) {
		return repo.findById(id).get();
	}

	public void delete(Long id) {
		repo.deleteById(id);

	}

	public List<Slide> search(String keyword) {
		return repo.search(keyword);
	}

}