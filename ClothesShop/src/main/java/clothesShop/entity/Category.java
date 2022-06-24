package clothesShop.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "categories")
@Getter
@Setter
public class Category {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String name;
	private String decriptions;

//	@OneToMany(mappedBy = "id_category", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
//	@OneToMany(fetch = FetchType.EAGER)
//	@JoinColumn(name = "id_category")
//	private List<Product> products;

	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "id_menu", nullable = false)
	private Menu menu;

}
