package clothesShop.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import clothesShop.dao.admin.INewDAO;
import clothesShop.service.admin.INewService;
import clothesShop.model.NewModel;

@Service
public class NewService implements INewService {
	
	@Autowired
	private INewDAO newDao;
	

	public List<NewModel> findAll() {
		return newDao.findAll();
	}
}
