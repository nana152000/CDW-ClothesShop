package ClothesShop.Entity.User;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

public class MapperCategories implements RowMapper<Categories>{

	public Categories mapRow(ResultSet rs, int rowNum) throws SQLException {
		Categories categories = new Categories();
		categories.setId(rs.getInt("id"));
		categories.setId_menu(rs.getInt("id_menu"));
		categories.setName(rs.getString("name"));
		categories.setDecriptions(rs.getString("decriptions"));
		return categories;
	}
	
}