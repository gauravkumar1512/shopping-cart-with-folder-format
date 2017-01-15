package com.niit.shoppingCart.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Product 

{ @Id
	private String id;
private String name;
private String desc;
private int price;

    public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getDesc() {
	return desc;
}
public void setDesc(String desc) {
	this.desc = desc;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
	


}
