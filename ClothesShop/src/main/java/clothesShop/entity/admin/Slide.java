package clothesShop.entity.admin;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "slides")
@Getter
@Setter
public class Slide {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "image")
	private String image;
	@Column(name = "caption")
	private String caption;
	@Column(name = "content")
	private String content;
}
