package clothesShop.service.Implement;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import clothesShop.entity.Product;
import clothesShop.entity.User;
import clothesShop.repository.UserRepository;
import clothesShop.service.IUserService;

@Service
@Transactional
public class UserServiceImpl implements IUserService {
	@Autowired
	UserRepository userRepository;

	@Override
	public User checkAccount(User user) {
		String pass = user.getPassword();
		user = findByUser(user.getUser());
		System.out.println("user: " + user.toString());
		if (user != null) {
			if (BCrypt.checkpw(pass, user.getPassword())) {
				return user;
			} else {
				return null;
			}
		}
		return null;

	}

	@Override
	public void save(User user) {
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
		userRepository.save(user);

	}

	@Override
	public User findByUser(String userName) {
		User user = new User();
		List<User> users = userRepository.findAll();
		for (User u : users) {
			if (u.getUser().equals(userName)) {
				user = new User(u.getId(), userName, u.getPassword(), u.getDisplay_name(), u.getAddress(),u.getPhone());
			}
		}
		return user;
	}

}
