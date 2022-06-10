package ClothesShop.DAO.User;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import ClothesShop.Entity.User.MapperMenus;
import ClothesShop.Entity.User.Menus;

@Repository
public class MenusDAO extends BaseDAO {

	public List<Menus> GetDataMenus() {
		List<Menus> list = new ArrayList<Menus>();
		String sql = "SELECT * FROM menus";
		list = _jdbcTemplate.query(sql, new MapperMenus());
		return list;
	}
}
