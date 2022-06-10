package ClothesShop.DAO.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class BaseDAO {
	// Biến chung nên có dấu _
	// Biến trong method k có
	@Autowired
	public JdbcTemplate _jdbcTemplate;
}
