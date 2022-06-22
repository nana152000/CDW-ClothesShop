package clothesShop.dao.user;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import clothesShop.entity.user.MapperSlides;
import clothesShop.entity.user.Slides;

@Repository
public class SlidesDAO extends BaseDAO{

	public List<Slides> GetDataSlide() {
		List<Slides> list = new ArrayList<Slides>();
		String sql = "SELECT * FROM slides";
		list = _jdbcTemplate.query(sql, new MapperSlides());
		return list;
	}

	public static void main(String[] args) {
		SlidesDAO homeDao = new SlidesDAO();
		List<Slides> list = homeDao.GetDataSlide();
	}
}
