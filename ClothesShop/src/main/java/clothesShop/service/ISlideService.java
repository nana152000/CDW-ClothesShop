package clothesShop.service;

import java.util.List;

import clothesShop.entity.Slide;

public interface ISlideService {

	void delete(Long id);

	Slide get(Long id);

	List<Slide> listAll();

	void save(Slide slide);

}
