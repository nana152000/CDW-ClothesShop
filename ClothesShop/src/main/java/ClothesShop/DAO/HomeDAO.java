package ClothesShop.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import ClothesShop.Entity.MapperSlides;
import ClothesShop.Entity.Slides;

@Repository
public class HomeDAO {
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
		HomeDAO homeDao = new HomeDAO();
		List<Slides> list = homeDao.GetDataSlide();
	}
}
