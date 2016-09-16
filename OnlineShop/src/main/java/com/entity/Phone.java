package com.entity;

import java.awt.Image;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Phone {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String brand;
	private String type;
	private double price;
	private boolean isAvailable = true;
	@Override
	public String toString() {
		return "Phone [id=" + id + ", brand=" + brand + ", type=" + type
				+ ", price=" + price + ", isAvailable=" + isAvailable + "]";
	}

	// private Image image;
	@ManyToMany(fetch = FetchType.LAZY)
	private List<Customer> customers;

	public Phone() {
	}
	

	


	public Phone(int id, String brand, String type, double price, boolean isAvailable) {
		super();
		this.id = id;
		this.brand = brand;
		this.type = type;
		this.price = price;
		this.isAvailable = isAvailable;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	//
	// public Image getImage() {
	// return image;
	// }
	//
	// public void setImage(Image image) {
	// this.image = image;
	// }

	public List<Customer> getCustomers() {
		return customers;
	}

	public void setCustomers(List<Customer> customers) {
		this.customers = customers;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

}
