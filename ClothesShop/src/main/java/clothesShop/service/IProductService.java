package clothesShop.service;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import clothesShop.entity.Product;

@Service
public interface IProductService {

//	Page<Product> findAll(Pageable pageable);

	Map<Integer, String> listProductId();

	void delete(Long id);

	Product get(Long id);

	void save(Product product);

	List<Product> listAll();

	Page<Product> listAll(int pageNum, String sortField, String sortDir, String keyword);

	List<Product> listAllNewProduct();
	
	List<Product> listAllSaleProduct();

//	Page<Product> findAllByCategory1(int pageNum, String sortField, String sortDir);

}
