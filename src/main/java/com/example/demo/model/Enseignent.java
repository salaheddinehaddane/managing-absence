package com.example.demo.model;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue("enseignent")
public class Enseignent extends Personne {

	public Enseignent() {
		super();
	}

}
