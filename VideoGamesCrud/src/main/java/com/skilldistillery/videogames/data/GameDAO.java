package com.skilldistillery.videogames.data;

import java.util.List;

import com.skilldistillery.jpavideogame.entities.Game;

public interface GameDAO {

	
	public Game findById(int gameId);
	public List<Game> findAll();
	public List<Game> findGameByKeyword(String keyword);
	public Boolean deleteGame(int id);
	public Game addNewGame(Game game);
	public Game updateGame(int id, Game game);
	
}
