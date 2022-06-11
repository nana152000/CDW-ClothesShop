package ClothesShop.Dto.User;

import java.sql.Date;

public class ProductsDto {
	private long id_product;
	private int id_category;
	private String name;
	private String sizes;
	private double price;
	private int sale;
	private boolean featured_products;
	private boolean new_product;
	private String decriptions;
	private long id_color;
	private String name_color;
	private String color_code;
	private String image;
	private Date date_created;
	private Date date_update;

	public ProductsDto() {
		super();
	}

	public long getId_product() {
		return id_product;
	}

	public void setId_product(long id_product) {
		this.id_product = id_product;
	}

	public int getId_category() {
		return id_category;
	}

	public void setId_category(int id_category) {
		this.id_category = id_category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSizes() {
		return sizes;
	}

	public void setSizes(String sizes) {
		this.sizes = sizes;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getSale() {
		return sale;
	}

	public void setSale(int sale) {
		this.sale = sale;
	}

	public boolean isFeatured_products() {
		return featured_products;
	}

	public void setFeatured_products(boolean featured_products) {
		this.featured_products = featured_products;
	}

	public boolean isNew_product() {
		return new_product;
	}

	public void setNew_product(boolean new_product) {
		this.new_product = new_product;
	}

	public String getDecriptions() {
		return decriptions;
	}

	public void setDecriptions(String decriptions) {
		this.decriptions = decriptions;
	}

	public long getId_color() {
		return id_color;
	}

	public void setId_color(long id_color) {
		this.id_color = id_color;
	}

	public String getName_color() {
		return name_color;
	}

	public void setName_color(String name_color) {
		this.name_color = name_color;
	}

	public String getColor_code() {
		return color_code;
	}

	public void setColor_code(String color_code) {
		this.color_code = color_code;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Date getDate_created() {
		return date_created;
	}

	public void setDate_created(Date date_created) {
		this.date_created = date_created;
	}

	public Date getDate_update() {
		return date_update;
	}

	public void setDate_update(Date date_update) {
		this.date_update = date_update;
	}

}
