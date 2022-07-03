package clothesShop.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "orders")
@Getter
@Setter
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String user;
	private String password;
	private String display_name;
	private String address;
	private String phone;
	private double total;
	private int quantity;
	private String note;

	@Override
	public String toString() {
		return "Order [id=" + id + ", user=" + user + ", password=" + password + ", display_name=" + display_name
				+ ", address=" + address + ", phone=" + phone + ", total=" + total + ", quantity=" + quantity
				+ ", note=" + note + "]";
	}

	public Order() {
		super();
	}

	public Order(Long id, String user, String password, String display_name, String address, String phone, double total,
			int quantity, String note) {
		super();
		this.id = id;
		this.user = user;
		this.password = password;
		this.display_name = display_name;
		this.address = address;
		this.phone = phone;
		this.total = total;
		this.quantity = quantity;
		this.note = note;
	}

}
