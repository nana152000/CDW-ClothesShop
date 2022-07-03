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
@Table(name = "order_details")
@Getter
@Setter
public class OrderDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private int quanity;
	private double total;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_order")
	private Order order;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_product")
	private Product product;

	@Override
	public String toString() {
		return "OrderDetail [id=" + id + ", quanity=" + quanity + ", total=" + total + ", order=" + order + ", product="
				+ product + "]";
	}
	
	
}
