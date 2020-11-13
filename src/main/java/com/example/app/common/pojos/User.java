package com.example.app.common.pojos;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Size;


@Entity
@Table(name ="user")
public class User {

	

	

@Id
@GeneratedValue(strategy = GenerationType.AUTO)
@Column(name="id")
private Integer id=0;

public Integer getId(){
 return id;
}


public void setId(Integer id){
 this.id=id;
}


@Size(max= 200, message = "User Name should not be greater than 200")
@Column(name="user_name")
private String user_name;

public String getUser_name(){
 return user_name;
}


public void setUser_name(String user_name){
 this.user_name=user_name;
}


@Size(max= 200, message = "Password should not be greater than 200")
@Column(name="password")
private String password;

public String getPassword(){
 return password;
}


public void setPassword(String password){
 this.password=password;
}


@Size(max= 100, message = "Enrollement No should not be greater than 100")
@Column(name="enrollement_no")
private String enrollement_no;

public String getEnrollement_no(){
 return enrollement_no;
}


public void setEnrollement_no(String enrollement_no){
 this.enrollement_no=enrollement_no;
}


@Size(max= 200, message = "First Name should not be greater than 200")
@Column(name="first_name")
private String first_name;

public String getFirst_name(){
 return first_name;
}


public void setFirst_name(String first_name){
 this.first_name=first_name;
}


@Size(max= 200, message = "Last Name should not be greater than 200")
@Column(name="last_name")
private String last_name;

public String getLast_name(){
 return last_name;
}


public void setLast_name(String last_name){
 this.last_name=last_name;
}


@Size(max= 100, message = "Mobile should not be greater than 100")
@Column(name="mobile")
private String mobile;

public String getMobile(){
 return mobile;
}


public void setMobile(String mobile){
 this.mobile=mobile;
}


@Size(max= 200, message = "Email Id should not be greater than 200")
@Column(name="email_id")
private String email_id;

public String getEmail_id(){
 return email_id;
}


public void setEmail_id(String email_id){
 this.email_id=email_id;
}


@Size(max= 500, message = "Address should not be greater than 500")
@Column(name="address")
private String address;

public String getAddress(){
 return address;
}


public void setAddress(String address){
 this.address=address;
}


@Size(max= 100, message = "Role should not be greater than 100")
@Column(name="role")
private String role;

public String getRole(){
 return role;
}


public void setRole(String role){
 this.role=role;
}


@Size(max= 100, message = "Active should not be greater than 100")
@Column(name="active")
private String active;

public String getActive(){
 return active;
}


public void setActive(String active){
 this.active=active;
}


@Column(name="created_date")
private Date created_date;

public Date getCreated_date(){
 return created_date;
}


public void setCreated_date(Date created_date){
 this.created_date=created_date;
}

	
	
}