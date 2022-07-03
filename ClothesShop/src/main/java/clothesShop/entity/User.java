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

	private String user;
	private String password;
	private String display_name;
	private String address;

	public User() {
		super();
	}

	public User(Long id, String user, String password, String display_name, String address) {
		super();
		this.id = id;
		this.user = user;
		this.password = password;
		this.display_name = display_name;
		this.address = address;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", user=" + user + ", password=" + password + ", display_name=" + display_name
				+ ", address=" + address + "]";
	}



}
