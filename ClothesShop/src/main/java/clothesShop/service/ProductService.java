package clothesShop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import clothesShop.entity.Category;
import clothesShop.entity.Product;
import clothesShop.repository.ProductRepository;

@Service
@Transactional
public class ProductService {
	@Autowired
	ProductRepository productRepository;
	
	public List<Product> listAll() {
		return (List<Product>) productRepository.findAll();
	}
	public void save(Product product) {
		productRepository.save(product);

	}
	public Product get(Long id) {
		return productRepository.findById(id).get();
	}

	public void delete(Long id) {
		productRepository.deleteById(id);

	}

	public List<Product> search(String keyword) {
		return productRepository.search(keyword);
	}

}
