package clothesShop.service.Implement;

import java.util.List;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import clothesShop.entity.FavorateProduct;
import clothesShop.repository.FavorateProductRepository;
import clothesShop.service.IFavorateProductService;

@Service
@Transactional
public class FavorateProductServiceImpl implements IFavorateProductService {
	@Autowired
	FavorateProductRepository favorateProductRepository;

	@Override
	public void save(FavorateProduct favorateProduct) {
		System.out.println("vaomethof them");
		favorateProductRepository.save(favorateProduct);

	}

	@Override
	public FavorateProduct get(Long id) {
		return favorateProductRepository.findById(id).get();
	}

	@Override
	public List<FavorateProduct> listAll() {
		return (List<FavorateProduct>) favorateProductRepository.findAll();
	}

}
