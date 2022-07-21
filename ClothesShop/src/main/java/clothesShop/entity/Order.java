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

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_user")
	private User user;

	private double total;
	private int quantity;
	private String note;

	public Order() {
		super();
	}

	@Override
	public String toString() {
		return "Order [id=" + id + ", user=" + user + ", total=" + total + ", quantity=" + quantity + ", note=" + note
				+ "]";
	}

	public Order(Long id, User user, double total, int quantity, String note) {
		super();
		this.id = id;
		this.user = user;
		this.total = total;
		this.quantity = quantity;
		this.note = note;
	}
}
