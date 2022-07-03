package clothesShop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import clothesShop.entity.Order;

public interface OrderRepository extends JpaRepository<Order, Long>{
	@Query("SELECT MAX(e.id) FROM Order e")
	public Long getIdMaxOrder();
}
