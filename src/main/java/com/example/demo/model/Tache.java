package com.example.demo.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Tache {
	@Id
	@GeneratedValue
	private int id;
	@Column(length=255)
	private String nom_tache;
	
	/*@ManyToOne
	private Absence absence;*/
	
	@OneToMany(mappedBy="tache")
	List<Absence> absence;
	@ManyToOne
	Service service;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom_tache() {
		return nom_tache;
	}

	public void setNom_tache(String nom_tache) {
		this.nom_tache = nom_tache;
	}

	

	public Tache() {
		super();
	}
	
	
}
