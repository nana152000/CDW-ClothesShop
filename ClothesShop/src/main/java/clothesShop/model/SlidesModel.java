package clothesShop.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SlidesModel extends AbstractModel<SlidesModel> {
	private String image;
	private String caption;
	private String content;
}
