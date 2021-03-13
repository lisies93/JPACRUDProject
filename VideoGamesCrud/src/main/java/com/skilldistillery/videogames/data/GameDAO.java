package com.skilldistillery.videogames.data;

import java.util.List;

import com.skilldistillery.jpavideogame.entities.Game;

public interface GameDAO {

	
	Game findById(int gameId);
	List<Game> findAll();
	
	
}
