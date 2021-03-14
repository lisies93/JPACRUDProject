package com.skilldistillery.videogames.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpavideogame.entities.Game;

@Service
@Transactional
public class GameDaoJpaImpl implements GameDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Game findById(int gameId) {
		return em.find(Game.class, gameId);
	}

	@Override
	public List<Game> findAll() {
		String query = "SELECT g FROM Game g";
		return em.createQuery(query, Game.class).getResultList();
	}

	@Override
	public List<Game> findGameByKeyword(String keyword) {
		String query = "SELECT g FROM Game g WHERE name LIKE :keyword";
		return em.createQuery(query, Game.class).setParameter("keyword", keyword).getResultList();
	}

	@Override
	public Boolean deleteGame(int id) {

		Game g = em.find(Game.class, id);

		if (g != null) {
			em.remove(g);
		}

		boolean gameWasDeleted = !em.contains(g);

		return gameWasDeleted;

	}

	@Override
	public Game addNewGame(Game game) {

		em.persist(game);
		em.flush();

		return game;
	}

	@Override
	public Game updateGame(int id , Game game) {

		Game managedGame = em.find(Game.class, id);

		managedGame.setName(game.getName());
		managedGame.setGenre(game.getGenre());
		managedGame.setPublisher(game.getPublisher());
		managedGame.setOriginalPlatform(game.getOriginalPlatform());
		managedGame.setReleasedYear(game.getReleasedYear());
		managedGame.setDescription(game.getDescription());
		managedGame.setImage(game.getImage());

		return managedGame;
	}

}
