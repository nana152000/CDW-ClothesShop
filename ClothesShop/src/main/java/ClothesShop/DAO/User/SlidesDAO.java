package ClothesShop.DAO.User;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import ClothesShop.Entity.User.MapperSlides;
import ClothesShop.Entity.User.Slides;

@Repository
public class SlidesDAO {
	// Biến chung nên có dấu _
	// Biến trong method k có
	@Autowired
	public JdbcTemplate _jdbcTemplate;

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
