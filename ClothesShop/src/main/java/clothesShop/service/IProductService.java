package clothesShop.service;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import clothesShop.entity.Product;

public interface IProductService {

	Page<Product> findAll(Pageable pageable);

//	Page<Product> findProductPaging(String firstname, Pageable pageable);

	Map<Integer, String> listProductId();

	List<Product> search(String keyword);

	void delete(Long id);

	Product get(Long id);

	void save(Product product);

	List<Product> listAll();

	Page<Product> listAll(int pageNum);


	Page<Product> listAllById(int id, int pageNum);

}
