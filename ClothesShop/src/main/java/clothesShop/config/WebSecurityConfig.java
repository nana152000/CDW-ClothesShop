package clothesShop.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import clothesShop.authentication.MyDBAuthenticationService;
import clothesShop.service.IUserService;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	IUserService userService;
	@Autowired
	MyDBAuthenticationService myDBAauthenticationService;

	@Bean
	public PasswordEncoder passwordEncoder() {
		// Password encoder, để Spring Security sử dụng mã hóa mật khẩu người dùng
		return new BCryptPasswordEncoder();
	}

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {

		// For User in database.
		auth.userDetailsService(myDBAauthenticationService).passwordEncoder(passwordEncoder());

	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.csrf().disable();

		// The pages requires login as EMPLOYEE or MANAGER.
		// If no login, it will redirect to /login page.
		http.authorizeRequests().antMatchers("/thanh-toan", "/tai-khoan", "/yeu-thich")//
				.access("hasRole('ROLE_USER')");

		// For MANAGER only.
		http.authorizeRequests().antMatchers("/quan-tri").access("hasRole('ROLE_ADMIN')");
		// When the user has logged in as XX.
		// But access a page that requires role YY,
		// AccessDeniedException will throw.
		http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/404");

		// Config for Login Form
		http.authorizeRequests().and().formLogin()//
				// Submit URL of login page.
				.loginProcessingUrl("/j_spring_security_check") // Submit URL
				.loginPage("/dang-nhap")//
				.defaultSuccessUrl("/tai-khoan")//
				.failureUrl("/dang-nhap?error=true")//
				.usernameParameter("email")//
				.passwordParameter("password")
				// Config for Logout Page
				// (Go to home page).
				.and().logout().logoutUrl("/dang-xuat").logoutSuccessUrl("/");

	}
}