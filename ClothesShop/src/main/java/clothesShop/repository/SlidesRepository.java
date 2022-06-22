package clothesShop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import clothesShop.entity.admin.Slide;

public interface SlidesRepository extends CrudRepository<Slide, Long>{
	@Query(value = "SELECT c FROM Slide c WHERE c.image LIKE '%' || :keyword || '%'")
	public List<Slide> search(@Param("keyword") String keyword);
}
