package com.example.demo.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Absence {
	@Id
	private int id;
	
	/*
	@OneToMany(mappedBy="personne")
	List<Personne> personne ;
	@OneToMany(mappedBy="absence")
	List<Tache> tache ;*/
	
	@ManyToOne
	Personne personne;
	@ManyToOne
	Tache tache;
	
	private int heure_debut;
	private int heure_fin;
	@Column(length=255)
	private String motif;
	
	

	public int getHeure_debut() {
		return heure_debut;
	}
	public void setHeure_debut(int heure_debut) {
		this.heure_debut = heure_debut;
	}
	public int getHeure_fin() {
		return heure_fin;
	}
	public void setHeure_fin(int heure_fin) {
		this.heure_fin = heure_fin;
	}
	public String getMotif() {
		return motif;
	}
	public void setMotif(String motif) {
		this.motif = motif;
	}
	public Absence() {
		super();
	}
	
	
}