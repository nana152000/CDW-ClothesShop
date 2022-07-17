package clothesShop.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import clothesShop.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {
	@Query(value = "SELECT p FROM Product p WHERE p.name LIKE '%' || :keyword || '%' "
			+ "or p.sizes LIKE '%' || :keyword || '%' or p.price LIKE '%' || :keyword || '%'")
	public Page<Product> search(@Param("keyword") String keyword, Pageable pageable);

	@Query(value = "SELECT p.name FROM Product p")
	public List<String> listId();

	@Query("SELECT e FROM Product e ORDER BY e.name DESC")
	public List<Product> findAllByOrderByNameDesc();

	@Query("SELECT e FROM Product e")
	public Page<Product> findAll(Pageable pageable);

	@Query("SELECT e FROM Product e where e.new_product = 1 order by RAND()")
	public List<Product> listAllNewProduct();
	
	@Query("SELECT e FROM Product e where e.sale != 0 order by RAND()")
	public List<Product> listAllSaleProduct();

	@Query("SELECT p FROM Product p WHERE p.category.id = 1 ")
	public Page<Product> findAllByCategory1(Pageable pageable);
}
