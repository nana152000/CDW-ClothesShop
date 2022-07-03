package clothesShop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import clothesShop.entity.User;

public interface UserRepository extends JpaRepository<User, Long>{

}
