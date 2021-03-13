package com.skilldistillery.videogames;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.skilldistillery.jpavideogame")
public class VideoGamesCrudApplication {

	public static void main(String[] args) {
		SpringApplication.run(VideoGamesCrudApplication.class, args);
	}

}
