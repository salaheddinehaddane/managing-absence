package com.example.demo.model;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;


@Entity
@DiscriminatorValue("admin")
public class Admin extends Personne {

	public Admin() {
		super();
	}
	
}
