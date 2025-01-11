package com.spring.entity;

public class Entity {
	
	private String name;
	private String lastName;
	private String address;
	private String email;
	private String City;
	private String State;
	private Long Mobile;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public Long getMobile() {
		return Mobile;
	}
	public void setMobile(Long mobile) {
		Mobile = mobile;
	}
	@Override
	public String toString() {
		return "Entity [name=" + name + ", lastName=" + lastName + ", address=" + address + ", email=" + email
				+ ", City=" + City + ", State=" + State + ", Mobile=" + Mobile + "]";
	}
	
}
