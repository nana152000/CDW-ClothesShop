package clothesShop.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import clothesShop.dao.admin.ISlidesDAO;
import clothesShop.service.admin.ISlidesService;
import clothesShop.model.SlidesModel;

@Service
public class SlidesService implements ISlidesService {
	@Autowired
	private ISlidesDAO slidesDao;

	public List<SlidesModel> findAll() {
		return slidesDao.findAll();
	}

	@Override
	public Long insert(String sql) {
		return slidesDao.insert(sql);
	}

}
