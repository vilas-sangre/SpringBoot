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

@Indexed
@Entity
@Table(name ="person")
public class Person {

	

	

@Id
@GeneratedValue(strategy = GenerationType.AUTO)
@Column(name="id")
private Long id=0l;

public Long getId(){
 return id;
}


public void setId(Long id){
 this.id=id;
}

@Field
@Size(max= 100, message = "PersonName should not be greater than 100")
@Column(name="personName")
private String personName;

public String getPersonName(){
 return personName;
}


public void setPersonName(String personName){
 this.personName=personName;
}

@Field
@Size(max= 100, message = "PersonPhone should not be greater than 100")
@Column(name="personPhone")
private String personPhone;

public String getPersonPhone(){
 return personPhone;
}


public void setPersonPhone(String personPhone){
 this.personPhone=personPhone;
}
@OneToMany(
        cascade = CascadeType.ALL,
        orphanRemoval = true
    )
@JoinColumn(name="PERSON_ID")
private List<Address> addressList=new ArrayList<Address>();

public List<Address> getAddressList(){
 return addressList;
}


public void setAddressList(List<Address> addressList){
 this.addressList=addressList;
}

	
	
}