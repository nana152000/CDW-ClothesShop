package clothesShop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import clothesShop.entity.Category;

public interface CategorieRepository extends JpaRepository<Category, Long>{

}
