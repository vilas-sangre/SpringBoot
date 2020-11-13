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
@Table(name ="PRODUCT")
public class Product {
@Id
@Column(name="ProductName")
private String productname;

public String getProductname(){
 return productname;
}


public void setProductname(String productname){
 this.productname=productname;
}

@Field
@Size(max= 10, message = "Description should not be greater than 10")
@Column(name="description")
private String description;

public String getDescription(){
 return description;
}


public void setDescription(String description){
 this.description=description;
}
}