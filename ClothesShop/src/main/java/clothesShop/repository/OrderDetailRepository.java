package clothesShop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import clothesShop.entity.OrderDetail;

public interface OrderDetailRepository extends JpaRepository<OrderDetail, Long>{

}
