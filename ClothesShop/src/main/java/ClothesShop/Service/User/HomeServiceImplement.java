package ClothesShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ClothesShop.DAO.User.SlidesDAO;
import ClothesShop.Entity.User.Slides;

@Service
public class HomeServiceImplement implements IHomeService {
	@Autowired
	private SlidesDAO slidesDao;

	public List<Slides> GetDataSlide() {
		return slidesDao.GetDataSlide();
	}

}
