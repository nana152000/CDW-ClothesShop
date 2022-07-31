package clothesShop.entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Email {
	private String from;
	private String to;
	private String fromPassword;
	private String content;
	private String subject;
}
