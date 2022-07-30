package clothesShop.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "users")
@Getter
@Setter
public class User implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final String ROLE_ADMIN = "ADMIN";
	public static final String ROLE_USER = "USER";

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String email;
	private String password;
	private String display_name;
	private String address;
	private String phone;
	private boolean active;
	private String userRole;

	public User() {
		super();
	}

	public User(Long id, String email, String password, String display_name, String address, String phone,
			boolean active, String userRole) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
		this.display_name = display_name;
		this.address = address;
		this.phone = phone;
		this.active = active;
		this.userRole = userRole;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", email=" + email + ", password=" + password + ", display_name=" + display_name
				+ ", address=" + address + ", phone=" + phone + ", active=" + active + ", userRole=" + userRole + "]";
	}

}
