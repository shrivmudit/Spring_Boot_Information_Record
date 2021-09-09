package com.record;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Student {
	
	@Id
	@GeneratedValue
	
	private long UId;
	private String FirstName;
	private String LastName;
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getNumber() {
		return Number;
	}
	public void setNumber(String number) {
		Number = number;
	}
	private String Uname;
	private String EmailId;
	private String Password;
	private byte Gender;
	private String Number;
	private String[] Hobby;
	public long getUId() {
		return UId;
	}
	public void setUId(long uID) {
		UId = uID;
	}
	public String getUname() {
		return Uname;
	}
	public void setUname(String uname) {
		Uname = uname;
	}
	public String getEmailId() {
		return EmailId;
	}
	public void setEmailId(String emailId) {
		EmailId = emailId;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public byte getGender() {
		return Gender;
	}
	public void setGender(byte gender) {
		Gender = gender;
	}
	public String[] getHobby() {
		return Hobby;
	}
	public void setHobby(String[] hobby) {
		Hobby = hobby;
	}
	@Override
	public String toString() {
		return "Student [UId=" + UId + ", Uname=" + Uname + ", EmailId=" + EmailId + ", Password=" + Password
				+ ", Gender=" + Gender + ", Hobby=" + Arrays.toString(Hobby) + "]";
	}
	
}
