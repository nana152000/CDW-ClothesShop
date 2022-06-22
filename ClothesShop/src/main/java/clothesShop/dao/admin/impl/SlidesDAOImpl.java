package clothesShop.dao.admin.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import clothesShop.dao.admin.ISlidesDAO;
import clothesShop.mapper.SlidesMapper;
import clothesShop.model.SlidesModel;

@Repository
public class SlidesDAOImpl extends AbstractDAO<SlidesModel> implements ISlidesDAO {
	@PersistenceContext
	private EntityManager em;

	public List<SlidesModel> findAll() {
		StringBuilder sql = new StringBuilder("SELECT * FROM slides");
		return query(sql.toString(), new SlidesMapper());
	}

	@Override
	public Long insert(String sql) {
		sql = new String("INSERT INTO slides(caption, content, image) VALUES (?,?,?)");
		return insert(sql);
	}
	
	

}
