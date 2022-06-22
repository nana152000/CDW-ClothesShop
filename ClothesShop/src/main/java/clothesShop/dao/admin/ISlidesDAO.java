package clothesShop.dao.admin;

import java.util.List;

import clothesShop.model.SlidesModel;

public interface ISlidesDAO extends GenericDAO<SlidesModel> {
	List<SlidesModel> findAll();
	Long insert(String sql);
}