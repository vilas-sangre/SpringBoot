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
@Table(name ="upcoming_announcements")
public class UpcomingAnnouncements {

	

	

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


@Size(max= 500, message = "Description should not be greater than 500")
@Column(name="description")
private String description;

public String getDescription(){
 return description;
}


public void setDescription(String description){
 this.description=description;
}


@Column(name="announcement_date")
private Date announcement_date;

public Date getAnnouncement_date(){
 return announcement_date;
}


public void setAnnouncement_date(Date announcement_date){
 this.announcement_date=announcement_date;
}


@Column(name="validity")
private Date validity;

public Date getValidity(){
 return validity;
}


public void setValidity(Date validity){
 this.validity=validity;
}


@Column(name="created_date")
private Date created_date;

public Date getCreated_date(){
 return created_date;
}


public void setCreated_date(Date created_date){
 this.created_date=created_date;
}


@Size(max= 200, message = "Created User should not be greater than 200")
@Column(name="created_user")
private String created_user;

public String getCreated_user(){
 return created_user;
}


public void setCreated_user(String created_user){
 this.created_user=created_user;
}

@Size(max= 200, message = "Anouncement Type should not be greater than 200")
@Column(name="anouncement_type")
private String anouncement_type;

public String getAnouncement_type() {
	return anouncement_type;
}


public void setAnouncement_type(String anouncement_type) {
	this.anouncement_type = anouncement_type;
}


	
	
}