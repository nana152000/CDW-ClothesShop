package clothesShop.dao.admin.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import clothesShop.dao.admin.INewDAO;
import clothesShop.mapper.NewMapper;
import clothesShop.model.NewModel;

@Repository
public class NewDAO extends AbstractDAO<NewModel> implements INewDAO {
	
	
	public List<NewModel> findAll() {
		StringBuilder sql = new StringBuilder("SELECT * FROM news");
		return query(sql.toString(), new NewMapper());
	}
}
