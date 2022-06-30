package clothesShop.service.Implement;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import clothesShop.entity.Product;
import clothesShop.repository.ProductRepository;
import clothesShop.service.IProductService;

@Service
@Transactional
public class ProductServiceImpl implements IProductService {
	@Autowired
	ProductRepository productRepository;

	@Override
	public List<Product> listAll() {
		return (List<Product>) productRepository.findAll();
	}

	@Override
	public void save(Product product) {
		productRepository.save(product);

	}

	@Override
	public Product get(Long id) {
		return productRepository.findById(id).get();
	}

	@Override
	public void delete(Long id) {
		productRepository.deleteById(id);

	}

	@Override
	public List<Product> search(String keyword) {
		return productRepository.search(keyword);
	}

	@Override
	public Map<Integer, String> listProductId() {
		Map<Integer, String> listProductId = new HashMap<>();
		for (int i = 0; i < productRepository.listId().size(); i++) {
			listProductId.put((i + 1), productRepository.listId().get(i));
		}
		return listProductId;
	}

//	@Override
//	public Page<Product> findProductPaging(String firstname, Pageable pageable) {
//		return productRepository.findProductPaging(firstname, pageable);
//	}
	@Override
	public Page<Product> listAll(int pageNum) {
		int pageSize = 12;

		Pageable pageable = PageRequest.of(pageNum - 1, pageSize);

		return productRepository.findAll(pageable);
	}

	@Override
	public Page<Product> findAll(Pageable pageable) {
		return productRepository.findAll(pageable);
	}

	@Override
	public Page<Product> listAllById(int id, int pageNum) {
		int pageSize = 12;

		Pageable pageable = PageRequest.of(pageNum - 1, pageSize);
		Page<Product> list=productRepository.findAll(pageable);
		return productRepository.findAll(pageable);
		
	}
//	public List<Product> findAllById(List<Integer> id) {
//		return (List<Product>) productRepository.findAllById(id);
//	}


}
