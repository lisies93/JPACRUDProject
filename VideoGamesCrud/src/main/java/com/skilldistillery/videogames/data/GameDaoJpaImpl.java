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
		// TODO Auto-generated method stub
		return null;
	}

}
