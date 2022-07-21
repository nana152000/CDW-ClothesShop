package clothesShop.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "colors")
@Getter
@Setter
public class Color {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String name_color;
	private String color_code;
	private String image;
	@Transient
	private List<MultipartFile> images;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_product", nullable = false)
	private Product product;

	public Color() {
		super();
	}

	public Color(Long id, String name_color, String color_code, String image, Product product) {
		super();
		this.id = id;
		this.name_color = name_color;
		this.color_code = color_code;
		this.image = image;
		this.product = product;
	}

}
