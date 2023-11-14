package springdemo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "car")
public class Car {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "price")
	private double price;
	
	@Column(name = "catelogy")
	private String catelogy;
	
	@Column(name = "discription")
	private String discription;
	
	@Column(name = "photo")
	private String photo;
	
	public Car() {}
	public Car(int id, String name, double price, String catelogy, String discription, String photo) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.catelogy = catelogy;
		this.discription = discription;
		this.photo = photo;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
		
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	public String getCatelogy() {
		return catelogy;
	}
	public void setCatelogy(String catelogy) {
		this.catelogy = catelogy;
	}
	
	public String getDiscription() {
		return discription;
	}
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
	@Override
	public String toString() {
		return "Car [id=" + id + ", name=" + name + ", price=" + price + ", catelogy=" + catelogy + ", discription="
				+ discription + ", photo=" + photo + "]";
	}
	

}
