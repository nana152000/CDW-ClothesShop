package clothesShop.service;

import java.util.List;
import org.springframework.stereotype.Service;

import clothesShop.entity.FavorateProduct;

@Service
public interface IFavorateProductService {
	void save(FavorateProduct favorateProduct);

	FavorateProduct get(Long id);

	List<FavorateProduct> listAll();

}
