package com.example.app.pojos;

import java.util.Date;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Size;
import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Indexed;
import javax.persistence.JoinColumn;

@Entity
@Table(name ="STUDENT")
public class Student {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
@Column(name="FirstName")
private Integer firstname=0;

public Integer getFirstname(){
 return firstname;
}


public void setFirstname(Integer firstname){
 this.firstname=firstname;
}

@Field
@Column(name="Age")
private Integer age=0;

public Integer getAge(){
 return age;
}


public void setAge(Integer age){
 this.age=age;
}

@Field
@Column(name="salary")
private Float salary=0f;

public Float getSalary(){
 return salary;
}


public void setSalary(Float salary){
 this.salary=salary;
}

@Field
@Size(max= 0, message = "Gender should not be greater than 0")
@Column(name="gender")
private String gender;

public String getGender(){
 return gender;
}


public void setGender(String gender){
 this.gender=gender;
}

@Field
@Size(max= 0, message = "Fathername should not be greater than 0")
@Column(name="fathername")
private String fathername;

public String getFathername(){
 return fathername;
}


public void setFathername(String fathername){
 this.fathername=fathername;
}
}