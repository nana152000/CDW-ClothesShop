package ClothesShop.Dto.User;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperProductsDto implements RowMapper<ProductsDto> {
	public ProductsDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductsDto products = new ProductsDto();
		products.setId_product(rs.getLong("id_product"));
		products.setId_category(rs.getInt("id_category"));
		products.setName(rs.getString("name"));
		products.setSizes(rs.getString("sizes"));
		products.setPrice(rs.getDouble("price"));
		products.setSale(rs.getInt("sale"));
		products.setFeatured_products(rs.getBoolean("featured_products"));
		products.setNew_product(rs.getBoolean("new_product"));
		products.setDecriptions(rs.getString("decriptions"));
		products.setId_color(rs.getLong("id_color"));
		products.setName_color(rs.getString("name_color"));
		products.setColor_code(rs.getString("color_code"));
		products.setImage(rs.getString("image"));
		products.setDate_created(rs.getDate("date_created"));
		products.setDate_update(rs.getDate("date_update"));
		return products;
	}
}
