package clothesShop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import clothesShop.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Long>{
	@Query(value = "SELECT p FROM Product p WHERE p.name LIKE '%' || :keyword || '%'")
	public List<Product> search(@Param("keyword") String keyword);
	@Query(value = "SELECT p.name FROM Product p")
	public List<String> listId();

}
