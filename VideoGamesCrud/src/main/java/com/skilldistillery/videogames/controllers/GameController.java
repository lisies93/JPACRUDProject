package com.skilldistillery.videogames.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.videogames.data.GameDAO;

@Controller
public class GameController {

@Autowired
private GameDAO dao;	
	
@RequestMapping(path= {"/","home.do"})
 public String index(Model model) {
	
	model.addAttribute("test",dao.findById(1)); // debug
	 return "index";
 }
	
}
