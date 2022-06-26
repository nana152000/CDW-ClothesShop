package clothesShop.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//import clothesShop.dao.user.ProductsDAO;
import clothesShop.dto.user.ProductsDto;

@Service
public class CategoryServiceImplement implements ICategoryService{

	@Override
	public List<ProductsDto> GetAllProductsByID(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage) {
		// TODO Auto-generated method stub
		return null;
	}

//	@Autowired
//	private ProductsDAO productsDao;
//	
//	public List<ProductsDto> GetAllProductsByID(int id) {
//		return productsDao.GetAllProductsByID(id);
//	}
//	
//	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage) {
//		return productsDao.GetDataProductsPaginate(id, start, totalPage);
//	}

}