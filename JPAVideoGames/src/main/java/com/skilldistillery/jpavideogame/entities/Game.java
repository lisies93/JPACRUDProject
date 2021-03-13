package com.skilldistillery.jpavideogame.entities;

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
	
public Game() {}

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

@Override
public String toString() {
	return "Game [id=" + id + ", name=" + name + "]";
}



}
