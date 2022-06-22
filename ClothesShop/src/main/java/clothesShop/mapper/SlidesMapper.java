package clothesShop.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import clothesShop.model.SlidesModel;

public class SlidesMapper implements RowMapper<SlidesModel>{

	public SlidesModel mapRow(ResultSet resultSet) {
		try {
			SlidesModel slides = new SlidesModel();
			slides.setId(resultSet.getLong("id"));
			slides.setImage(resultSet.getString("image"));
			slides.setCaption(resultSet.getString("caption"));
			slides.setContent(resultSet.getString("content"));
			
			return slides;
		} catch (SQLException e) {
			return null;
		}		}

}
