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
@Table(name ="activity")
public class Activity {

	

	

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


@Size(max= 500, message = "Activity Name should not be greater than 500")
@Column(name="activity_name")
private String activityName;

public String getActivityName(){
 return activityName;
}


public void setActivityName(String activityName){
 this.activityName=activityName;
}


@Size(max= 100, message = "Activity Desc should not be greater than 100")
@Column(name="activity_desc")
private String activityDesc;

public String getActivityDesc(){
 return activityDesc;
}


public void setActivityDesc(String activityDesc){
 this.activityDesc=activityDesc;
}


@Column(name="activity_date")
private Date activityDate;

public Date getActivityDate(){
 return activityDate;
}


public void setActivityDate(Date activityDate){
 this.activityDate=activityDate;
}


@Size(max= 500, message = "EmailId should not be greater than 500")
@Column(name="email_Id")
private String emailId;

public String getEmailId(){
 return emailId;
}


public void setEmailId(String emailId){
 this.emailId=emailId;
}

	
	
}