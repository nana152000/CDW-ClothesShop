package clothesShop.dao.user;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import clothesShop.entity.user.Categories;
import clothesShop.entity.user.MapperCategories;


@Repository
public class CategoriesDAO extends BaseDAO{

	public List<Categories> GetDataCategories() {
		List<Categories> list = new ArrayList<Categories>();
		String sql = "SELECT * FROM categories";
		list = _jdbcTemplate.query(sql, new MapperCategories());
		return list;
	}
}
