package clothesShop.service;

import clothesShop.entity.User;

public interface IUserService {

	void save(User user);

	User checkAccount(User user);

	User findByUser(String userName);

}
