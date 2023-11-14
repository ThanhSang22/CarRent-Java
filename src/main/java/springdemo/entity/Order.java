package springdemo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "order")
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idOrder")
	private int idOrder;
	
	@Column(name = "idCar")
	private int idCar;
	
	@Column(name = "idCustomer")
	private int idCustomer;
	
	@Column(name = "orderDate")
	private String orderDate;
	
	@Column(name = "totalPrice")
	private double totalPrice;
	
	public Order() {
		
	}
	public Order(int idOrder,int idCar, int idCustomer, String orderDate, double totalPrice) {
		super();
		this.idOrder = idOrder;
		this.idCar = idCar;
		this.idCustomer = idCustomer;
		this.orderDate = orderDate;
		this.totalPrice = totalPrice;
	}
	
	public int getIdOrder() {
		return idOrder;
	}
	public void setIdOrder(int idOrder) {
		this.idOrder = idOrder;
	}
	public int getIdCar() {
		return idCar;
	}
	public void setIdCar(int idCar) {
		this.idCar = idCar;
	}
	public int getIdCustomer() {
		return idCustomer;
	}
	public void setIdCustomer(int idCustomer) {
		this.idCustomer = idCustomer;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	@Override
	public String toString() {
		return "Order [idOrder=" + idOrder + ", idCar=" + idCar + ", idCustomer=" + idCustomer + ", orderDate="
				+ orderDate + ", totalPrice=" + totalPrice + "]";
	}
	
	
}
