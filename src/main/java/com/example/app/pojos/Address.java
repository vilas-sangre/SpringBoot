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
@Table(name ="address")
public class Address {

	

	

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
@Column(name="person_id")
private Long personId=0l;

public Long getPersonId(){
 return personId;
}


public void setPersonId(Long personId){
 this.personId=personId;
}

	
	
}