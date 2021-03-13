package com.skilldistillery.videogames.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpavideogame.entities.Game;
import com.skilldistillery.videogames.data.GameDAO;

@Controller
public class GameController {

	@Autowired
	private GameDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public String index() {
		return "index";
	}

	@RequestMapping(path = "getGame.do")
	public ModelAndView getAllGames() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("games", dao.findAll());
		mv.setViewName("allGames");
		return mv;
	}

	@RequestMapping(path = "getGame.do", params = "id")
	public ModelAndView getGameById(int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("idNum", id);
		mv.addObject("game", dao.findById(id));
		mv.setViewName("singleGame");
		return mv;
	}

	@RequestMapping(path = "getGame.do", params = "keyword", method = RequestMethod.GET)
	public ModelAndView findGamesByKeyword(String keyword) {
		ModelAndView mv = new ModelAndView();

		mv.addObject("games", dao.findGameByKeyword("%" + keyword + "%"));
		mv.setViewName("allGames");

		return mv;
	}

	@RequestMapping(path = "EditGame.do", params = "id", method = RequestMethod.GET)
	public ModelAndView getUpdateForm(int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("idNum", id);
		mv.addObject("game", dao.findById(id));
		mv.setViewName("updateGameForm");

		return mv;
	}

@RequestMapping(path="UpdateGame.do",
		method = RequestMethod.POST)
public ModelAndView updateGame(Game game, RedirectAttributes redir) {
	ModelAndView mv = new ModelAndView();
	
	redir.addFlashAttribute("game", dao.updateGame(game.getId(), game));
	mv.setViewName("redirect:gameCreated.do");
	
	return mv;
}


	@RequestMapping(path = "GetForm.do")
	public String getForm() {
		return "createGameForm";
	}

	@RequestMapping(path = "MakeGame.do", method = RequestMethod.POST)
	public ModelAndView newGame(Game game, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();

		dao.addNewGame(game);
		redir.addFlashAttribute("game", game);
		mv.setViewName("redirect:gameCreated.do");

		return mv;
	}

	@RequestMapping(path = "gameCreated.do", method = RequestMethod.GET)
	public ModelAndView gameCreated() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("singleGame");

		return mv;
	}

	@RequestMapping(path = "DeleteGame.do", params = "id", method = RequestMethod.GET)
	public ModelAndView deleteGame(int id) {

		Game game = null;
		game = dao.findById(id);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("gameDeleted");
		mv.addObject("deleted", dao.deleteGame(id));
		mv.addObject("game", game);

		return mv;
	}

}
