package clothesShop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import clothesShop.entity.Menu;

public interface MenuRepository extends JpaRepository<Menu, Long> {
	@Query(value = "SELECT p.name FROM Menu p")
	public List<String> listId();
}
