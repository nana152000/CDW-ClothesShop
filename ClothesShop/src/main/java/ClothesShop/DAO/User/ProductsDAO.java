package ClothesShop.DAO.User;

import java.util.List;

import org.springframework.stereotype.Repository;

import ClothesShop.Dto.User.MapperProductsDto;
import ClothesShop.Dto.User.ProductsDto;

@Repository
public class ProductsDAO extends BaseDAO {

	private String SqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("p.id as id_product ");
		sql.append(", p.id_category ");
		sql.append(", p.name ");
		sql.append(", p.sizes ");
		sql.append(", p.price ");
		sql.append(", p.sale ");
		sql.append(", p.featured_products ");
		sql.append(", p.new_product ");
		sql.append(", p.decriptions ");
		sql.append(", c.id as id_color ");
		sql.append(", c.name_color ");
		sql.append(", c.color_code ");
		sql.append(", c.image ");
		sql.append(", p.date_created ");
		sql.append(", p.date_update ");
		sql.append("FROM ");
		sql.append("products AS p ");
		sql.append("INNER JOIN ");
		sql.append("colors AS c ");
		sql.append("ON p.id = c.id_product ");
		sql.append("GROUP BY p.id, c.id_product ");
		sql.append("ORDER BY RAND() ");
		return sql.toString();
	}

	public List<ProductsDto> GetDataProducts() {
		String sql = SqlString();
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new MapperProductsDto());
		return listProducts;
	}

	public List<ProductsDto> GetListProductsByCategories(String id) {
		String sql = "SELECT * FROM products WHERE id_category = " + id;
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new MapperProductsDto());
		return listProducts;
	}
}
