package clothesShop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import clothesShop.entity.FavorateProduct;

@Repository
public interface FavorateProductRepository extends JpaRepository<FavorateProduct, Long> {

}
