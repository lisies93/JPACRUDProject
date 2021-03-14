package com.skilldistillery.jpavideogame.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Game {

@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int id;

private String name;

private String genre;

private String publisher;

@Column(name="original_platform")
private String originalPlatform;

@Column(name="released_year")
private int releasedYear;

private String description;

private String image;


public Game() {}


public Game(int id, String name, String genre, String publisher, String originalPlatform, int releasedYear) {
	super();
	this.id = id;
	this.name = name;
	this.genre = genre;
	this.publisher = publisher;
	this.originalPlatform = originalPlatform;
	this.releasedYear = releasedYear;
}


public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}


public String getGenre() {
	return genre;
}


public void setGenre(String genre) {
	this.genre = genre;
}


public String getPublisher() {
	return publisher;
}


public void setPublisher(String publisher) {
	this.publisher = publisher;
}


public String getOriginalPlatform() {
	return originalPlatform;
}


public void setOriginalPlatform(String originalPlatform) {
	this.originalPlatform = originalPlatform;
}


public int getReleasedYear() {
	return releasedYear;
}


public void setReleasedYear(int releasedYear) {
	this.releasedYear = releasedYear;
}


@Override
public String toString() {
	return "Game [id=" + id + ", name=" + name + ", genre=" + genre + ", publisher=" + publisher + ", originalPlatform="
			+ originalPlatform + ", releasedYear=" + releasedYear + "]";
}


public String getDescription() {
	return description;
}


public void setDescription(String description) {
	this.description = description;
}


public String getImage() {
	return image;
}


public void setImage(String image) {
	this.image = image;
}



}
