package com.atguigu.ssh.entities;

import java.util.Date;

public class Employee {

	private Integer id;
	private String lastName;
	private String email;
	private Integer dishprice;

	public Integer getDishprice() {
		return dishprice;
	}

	public void setDishprice(Integer dishprice) {
		this.dishprice = dishprice;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", lastName=" + lastName + ", email="
				+ email + ", dishprice=" + dishprice + "]";
	}

}
