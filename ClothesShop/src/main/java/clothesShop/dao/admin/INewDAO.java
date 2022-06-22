package clothesShop.dao.admin;

import java.util.List;

import clothesShop.model.NewModel;

public interface INewDAO extends GenericDAO<NewModel> {
	List<NewModel> findAll();
}
