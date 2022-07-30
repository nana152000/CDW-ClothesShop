package clothesShop.authentication;

import java.util.ArrayList;
import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import clothesShop.service.IUserService;

@Service
public class MyDBAuthenticationService implements UserDetailsService {

	@Autowired
	private IUserService userService;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		clothesShop.entity.User account = userService.findByUser(username);
		System.out.println("Account= " + account);
		if (account == null) {
			throw new UsernameNotFoundException("User " 
					+ username + " was not found in the database");
		}

		// USER,ADMIN,..
		String role = account.getUserRole();
		System.out.println("role: " + role);

		List<GrantedAuthority> grantList = new ArrayList<GrantedAuthority>();

		// ROLE_USER, ROLE_ADMIN
		GrantedAuthority authority = new SimpleGrantedAuthority("ROLE_" + role);

		grantList.add(authority);
		System.out.println("grantList: " + grantList);
		boolean enabled = account.isActive();
		boolean accountNonExpired = true;
		boolean credentialsNonExpired = true;
		boolean accountNonLocked = true;

		UserDetails userDetails = (UserDetails) new User(account.getEmail(),
				account.getPassword(), enabled, accountNonExpired,
				credentialsNonExpired, accountNonLocked, grantList);
		System.out.println("userDetails: " + userDetails);
		return userDetails;
	}

}
