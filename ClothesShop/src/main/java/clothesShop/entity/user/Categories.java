package clothesShop.entity.user;

public class Categories {
	private int id;
	private int id_menu;
	private String name;
	private String decriptions;

	public Categories() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId_menu() {
		return id_menu;
	}

	public void setId_menu(int id_menu) {
		this.id_menu = id_menu;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDecriptions() {
		return decriptions;
	}

	public void setDecriptions(String decriptions) {
		this.decriptions = decriptions;
	}

}
