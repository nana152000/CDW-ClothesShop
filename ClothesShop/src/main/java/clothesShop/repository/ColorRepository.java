package clothesShop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import clothesShop.entity.Color;

public interface ColorRepository extends JpaRepository<Color, Long> {
	@Query(value = "SELECT p.image FROM Color p where p.product.id=:id")
	public String findImageById(@Param("id") Long id);
}
