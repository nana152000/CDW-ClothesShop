package clothesShop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import clothesShop.entity.User;

@Service
public interface IUserService {

	void save(User user);

	void saveInf(User user);

	User findByUser(String userName);

	List<User> listAll();

	User get(Long id);

	User getName(String name);
}
