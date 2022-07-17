package clothesShop.service.Implement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
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

		return productRepository.findAll();
	}

	@Override
	public List<Product> listAllNewProduct() {
		return productRepository.listAllNewProduct();
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
	public Map<Integer, String> listProductId() {
		Map<Integer, String> listProductId = new HashMap<>();
		for (int i = 0; i < productRepository.listId().size(); i++) {
			listProductId.put((i + 1), productRepository.listId().get(i));
		}
		return listProductId;
	}

	@Override
	public Page<Product> listAll(int pageNum, String sortField, String sortDir, String keyword) {
		int pageSize = 8;
		Sort sort = null;
		if (sortDir.equals("asc")) {
			sort = Sort.by(sortField).ascending();
		} else if (sortDir.equals("desc")) {
			sort = Sort.by(sortField).descending();
		} else if (sortDir.equals("no")) {
			sort = Sort.unsorted();
		}

		Pageable pageable = PageRequest.of(pageNum - 1, pageSize, sort);

		if (keyword != null) {
			return productRepository.search(keyword, pageable);
		} else {
			return productRepository.findAll(pageable);
		}

	}

}
