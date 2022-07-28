package clothesShop.entity;

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
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String email;
	private String password;
	private String display_name;
	private String address;
	private String phone;

	public User() {
		super();
	}

	public User(Long id, String email, String password, String display_name, String address, String phone) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
		this.display_name = display_name;
		this.address = address;
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", email=" + email + ", password=" + password + ", display_name=" + display_name
				+ ", address=" + address + "]";
	}

}
