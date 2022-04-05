package com.example.demo.model;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue("etudiant")
public class Etudiant extends Personne {

	public Etudiant() {
		super();
	}

}
