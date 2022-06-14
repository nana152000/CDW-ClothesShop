package ClothesShop.DAO.User;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import ClothesShop.Dto.User.MapperProductsDto;
import ClothesShop.Dto.User.ProductsDto;

@Repository
public class ProductsDAO extends BaseDAO {
	private final boolean YES = true;
	private final boolean NO = false;

	private StringBuffer SqlString() {
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
		return sql;
	}

	private String SqlProducts(boolean newProduct, boolean featuredProducts) {
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		if (featuredProducts) {
			sql.append("AND p.featured_products = true ");
		}
		if (newProduct) {
			sql.append("AND p.new_product = true ");
		}
		sql.append("GROUP BY p.id, c.id_product ");
		sql.append("ORDER BY RAND() ");
		if (featuredProducts) {
			sql.append("LIMIT 9 ");
		}
		if (newProduct) {
			sql.append("LIMIT 12 ");
		}
		return sql.toString();
	}

//sql phaan loại sp theo id
	private StringBuffer SqlProductsByID(int id) {
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND id_category = " + id + " ");
		return sql;
	}

//sql phân trang
	private String SqlProductsPaginate(int id, int start, int totalPage) {
		StringBuffer sql = SqlProductsByID(id);
		sql.append("LIMIT " + start + ", " + totalPage);
		return sql.toString();
	}

	public List<ProductsDto> GetDataProducts() {
		String sql = SqlProducts(YES, NO);
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new MapperProductsDto());
		return listProducts;
	}

	public List<ProductsDto> GetAllProductsByID(int id) {
		String sql = SqlProductsByID(id).toString();
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new MapperProductsDto());
		return listProducts;
	}

	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage) {
		StringBuffer sqlGetDataByID = SqlProductsByID(id);
		List<ProductsDto> listProductsByID = _jdbcTemplate.query(sqlGetDataByID.toString(), new MapperProductsDto());
		List<ProductsDto> listProducts = new ArrayList<ProductsDto>();
		if (listProductsByID.size() > 0) {
			String sql = SqlProductsPaginate(id, start, totalPage);
			listProducts = _jdbcTemplate.query(sql, new MapperProductsDto());
		}
		return listProducts;
	}

}
