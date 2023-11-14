package springdemo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "cart")
public class Cart {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idCart")
	private int idCart;
	
	@Column(name = "idCar")
	private int idCar;
	
	@Column(name = "quantity")
	private int quantity;
	
	@Column(name = "orderDate")
	private String orderDate;
	
	@Column(name = "price")
	private double price;
	
	public Cart() {
		
	}
	public Cart(int idCart, int idCar, int quantity, String orderDate, double price) {
		super();
		this.idCart = idCart;
		this.idCar = idCar;
		this.quantity = quantity;
		this.orderDate = orderDate;
		this.price = price;
	}
	
	public int getIdCart() {
		return idCart;
	}
	public void setIdCart(int idCart) {
		this.idCart = idCart;
	}
	public int getIdCar() {
		return idCar;
	}
	public void setIdCar(int idCar) {
		this.idCar = idCar;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return "Cart [idCart=" + idCart + ", idCar=" + idCar + ", quantity=" + quantity + ", orderDate=" + orderDate
				+ ", price=" + price + "]";
	}
	

}
