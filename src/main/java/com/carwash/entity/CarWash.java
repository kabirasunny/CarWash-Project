package com.carwash.entity;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

public class CarWash {

	@NotBlank(message = "Phone Number can not be empty !!")
	@Size(min = 10, max = 10, message = "Phone Number must be 10 digit !!")
	private String phoneNumber;
	@Email(regexp = "^[A-Za-z0-9+_.-]+@(.+)$")
	private String email;
	@NotBlank(message = "Full name must be entered !!")
	@Size(min = 3, max = 20, message = "Fullname must be between 3-20 character !!")
	@Pattern(regexp = "[A-Za-z\s]+", message = "Kindly can be written only character not number !!")
	private String fullname;
	@Size(min = 6, max = 12, message = "Password must be between 6-12 character !!")
	private String password;
	private String secondPassword;

	public CarWash() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSecondPassword() {
		return secondPassword;
	}

	public void setSecondPassword(String secondPassword) {
		this.secondPassword = secondPassword;
	}

	@Override
	public String toString() {
		return "Food [phoneNumber=" + phoneNumber + ", email=" + email + ", fullname=" + fullname + ", password="
				+ password + "]";
	}

}
