 package online.hibernate;

import java.util.Date;

public class IndividualPojo 
{
	String name;
	String password;
    
    String country;
    String city;
    String gender;
    Long contactNo;  
    String email;
    //Date date;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	/*public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}*/
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	/*public boolean isGender() {
		return gender;
	}
	public void setGender(boolean gender) {
		this.gender = gender;
	}*/
	public Long getContactNo() {
		return contactNo;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setContactNo(Long contactNo) {
		this.contactNo = contactNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	/*public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}*/
    
    
    
    
} 
	
	