package clothesShop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import clothesShop.entity.admin.NewEntity;

public interface NewRepository extends JpaRepository<NewEntity, Long> {
	
}
