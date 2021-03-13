-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema videogamedb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `videogamedb` ;

-- -----------------------------------------------------
-- Schema videogamedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `videogamedb` DEFAULT CHARACTER SET utf8 ;
USE `videogamedb` ;

-- -----------------------------------------------------
-- Table `game`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `game` ;

CREATE TABLE IF NOT EXISTS `game` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `genre` VARCHAR(45) NULL,
  `publisher` VARCHAR(45) NOT NULL,
  `original_platform` VARCHAR(100) NULL,
  `released_year` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS videogameuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'videogameuser'@'localhost' IDENTIFIED BY 'videogameuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'videogameuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `game`
-- -----------------------------------------------------
START TRANSACTION;
USE `videogamedb`;
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (1, 'Pong', 'Sports', 'Atari', 'Arcade', 1972);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (2, 'Zork', 'Adventure', 'Infocom', 'PDP-10', 1977);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (3, 'Space Invaders', 'Shoot \'em up', 'Taito', 'Arcade', 1978);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (4, 'Asteroids', 'Shoot \'em up', 'Atari', 'Arcade', 1979);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (5, 'Adventure', 'Action-adventure', 'Atari', 'Atari 2600', 1980);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (6, 'Missile Command', 'Shoot \'em up', 'Atari', 'Arcade', 1980);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (7, 'Pac-Man', 'Maze', 'Namco', 'Arcade', 1980);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (8, 'Centipede', 'Shoot \'em up', 'Atari', 'Arcade', 1981);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (9, 'Defender', 'Shoot \'em up', 'Williams Entertainment', 'Arcade', 1981);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (10, 'Donkey Kong', 'Platform', 'Nintendo', 'Arcade', 1981);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (11, 'Frogger', 'Action', 'Sega', 'Arcade', 1981);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (12, 'Galaga', 'Shoot \'em up', 'Namco', 'Arcade', 1981);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (13, 'Tempest', 'Shoot \'em up', 'Atari', 'Arcade', 1981);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (14, 'Joust', 'Action', 'Williams Entertainment', 'Arcade', 1982);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (15, 'Ms. Pac-Man', 'Maze', 'Midway', 'Arcade', 1982);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (16, 'Pitfall!', 'Platform', 'Activision', 'Atari 2600', 1982);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (17, 'Robotron: 2084', 'Top-down shooter', 'Williams Entertainment', 'Arcade', 1982);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (18, 'Star Wars', 'Shoot \'em up', 'Atari', 'Arcade', 1983);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (19, 'Elite', 'Space flight simulator', 'Acornsoft', 'BBC Micro', 1984);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (20, 'Marble Madness', 'Action', 'Atari Games', 'Arcade', 1984);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (21, 'Tetris', 'Puzzle', 'Elorg', 'Electronika 60', 1984);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (22, 'Gauntlet', 'Action role-playing', 'Atari Games', 'Arcade', 1985);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (23, 'Ghosts \'n Goblins', 'Platform', 'Capcom', 'Arcade', 1985);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (24, 'Super Mario Bros.', 'Platform', 'Nintendo', 'NES', 1985);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (25, 'Bubble Bobble', 'Platform', 'Taito', 'Arcade', 1986);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (26, 'The Legend of Zelda', 'Action-adventure', 'Nintendo', 'NES', 1986);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (27, 'Out Run', 'Racing', 'Sega', 'Arcade', 1986);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (28, 'Contra', 'Run and gun', 'Konami', 'Arcade', 1987);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (29, 'Double Dragon', 'Beat \'em up', 'Technos Japan', 'Arcade', 1987);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (30, 'Mike Tyson\'s Punch-Out!!', 'Sports', 'Nintendo', 'NES', 1987);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (31, 'R-Type', 'Shoot \'em up', 'Irem', 'Arcade', 1987);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (32, 'Mega Man 2', 'Platform', 'Capcom', 'NES', 1988);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (33, 'Super Mario Bros. 3', 'Platform', 'Nintendo', 'NES', 1988);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (34, 'Prince of Persia', 'Platform', 'Broderbund', 'Apple II', 1989);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (35, 'SimCity', 'City-building', 'Maxis', 'Amiga, Macintosh', 1989);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (36, 'The Secret of Monkey Island', 'Adventure', 'LucasArts', 'PC', 1990);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (37, 'Speedball 2: Brutal Deluxe', 'Sports', 'Image Works', 'Atari ST', 1990);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (38, 'Super Mario World', 'Platform', 'Nintendo', 'Super NES', 1990);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (39, 'Another World', 'Platform', 'Delphine Software', 'Amiga, Atari ST', 1991);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (40, 'Civilization', 'Turn-based strategy', 'MicroProse', 'PC', 1991);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (41, 'The Legend of Zelda: A Link to the Past', 'Action-adventure', 'Nintendo', 'Super NES', 1991);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (42, 'Lemmings', 'Puzzle', 'Psygnosis', 'Amiga', 1991);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (43, 'Monkey Island 2: LeChuck\'s Revenge', 'Adventure', 'LucasArts', 'PC', 1991);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (44, 'Sonic the Hedgehog', 'Platform', 'Sega', 'Sega Genesis', 1991);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (45, 'Street Fighter II', 'Fighting', 'Capcom', 'Arcade', 1991);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (46, 'Dune II', 'Real-time strategy', 'Virgin Games', 'PC', 1992);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (47, 'Flashback', 'Platform', 'Delphine Software', 'Amiga', 1992);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (48, 'Mortal Kombat', 'Fighting', 'Midway', 'Arcade', 1992);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (49, 'Sonic the Hedgehog 2', 'Platform', 'Sega', 'Sega Genesis', 1992);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (50, 'Super Mario Kart', 'Kart racing', 'Nintendo', 'Super NES', 1992);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (51, 'Virtua Racing', 'Racing', 'Sega', 'Arcade', 1992);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (52, 'Wolfenstein 3D', 'First-person shooter', 'Apogee Software', 'PC', 1992);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (53, 'Day of the Tentacle', 'Adventure', 'LucasArts', 'PC', 1993);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (54, 'Daytona USA', 'Racing', 'Sega', 'Arcade', 1993);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (55, 'Doom', 'First-person shooter', 'id Software', 'PC', 1993);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (56, 'The Legend of Zelda: Link\'s Awakening', 'Action-adventure', 'Nintendo', 'Game Boy', 1993);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (57, 'Mortal Kombat II', 'Fighting', 'Midway', 'Arcade', 1993);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (58, 'Myst', 'Adventure', 'Broderbund', 'Macintosh', 1993);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (59, 'NBA Jam', 'Sports', 'Midway', 'Arcade', 1993);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (60, 'Phantasy Star IV', 'Role-playing', 'Sega', 'Sega Genesis', 1993);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (61, 'Sam & Max Hit the Road', 'Adventure', 'LucasArts', 'PC', 1993);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (62, 'Secret of Mana', 'Action role-playing', 'Square', 'Super NES', 1993);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (63, 'SimCity 2000', 'City-building', 'Maxis', 'Macintosh', 1993);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (64, 'Star Fox', 'Shoot \'em up', 'Nintendo', 'Super NES', 1993);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (65, 'Syndicate', 'Real-time tactics', 'Electronic Arts', 'Amiga, PC', 1993);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (66, 'Donkey Kong Country', 'Platform', 'Nintendo', 'Super NES', 1994);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (67, 'Doom II', 'First-person shooter', 'GT Interactive', 'PC', 1994);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (68, 'EarthBound', 'Role-playing', 'Nintendo', 'Super NES', 1994);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (69, 'Final Fantasy VI', 'Role-playing', 'Square', 'Super NES', 1994);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (70, 'Star Wars: TIE Fighter', 'Space flight simulator', 'LucasArts', 'PC', 1994);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (71, 'Super Metroid', 'Action-adventure', 'Nintendo', 'Super NES', 1994);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (72, 'UFO: Enemy Unknown', 'Turn-based strategy', 'MicroProse', 'PC', 1994);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (73, 'Chrono Trigger', 'Role-playing', 'Square', 'Super NES', 1995);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (74, 'Command & Conquer', 'Real-time strategy', 'Virgin Interactive', 'PC', 1995);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (75, 'Warcraft II: Tides of Darkness', 'Real-time strategy', 'Blizzard Entertainment', 'PC', 1995);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (76, 'Wipeout', 'Racing', 'Psygnosis', 'PC, PlayStation', 1995);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (77, 'Yoshi\'s Island', 'Platform', 'Nintendo', 'Super NES', 1995);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (78, 'Civilization II', 'Turn-based strategy', 'MicroProse', 'PC', 1996);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (79, 'Command & Conquer: Red Alert', 'Real-time strategy', 'Virgin Interactive', 'PC', 1996);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (80, 'Duke Nukem 3D', 'First-person shooter', 'GT Interactive', 'PC', 1996);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (81, 'Nights into Dreams...', 'Action', 'Sega', 'Sega Saturn', 1996);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (82, 'PaRappa the Rapper', 'Rhythm', 'Sony Computer Entertainment', 'PlayStation', 1996);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (83, 'Pokémon Red and Blue', 'Role-playing', 'Nintendo', 'Game Boy', 1996);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (84, 'Quake', 'First-person shooter', 'GT Interactive', 'PC', 1996);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (85, 'Resident Evil', 'Survival horror', 'Capcom', 'PlayStation', 1996);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (86, 'Super Mario 64', 'Platform', 'Nintendo', 'Nintendo 64', 1996);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (87, 'Tomb Raider', 'Action-adventure', 'Eidos Interactive', 'Sega Saturn, PlayStation', 1996);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (88, 'Castlevania: Symphony of the Night', 'Action-adventure', 'Konami', 'PlayStation', 1997);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (89, 'Diablo', 'Action role-playing', 'Blizzard Entertainment', 'PC', 1997);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (90, 'Fallout', 'Role-playing', 'Interplay Entertainment', 'PC', 1997);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (91, 'Final Fantasy Tactics', 'Tactical role-playing', 'Square', 'PlayStation', 1997);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (92, 'Final Fantasy VII', 'Role-playing', 'Square', 'PlayStation', 1997);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (93, 'GoldenEye 007', 'First-person shooter', 'Nintendo', 'Nintendo 64', 1997);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (94, 'Gran Turismo', 'Racing', 'Sony Computer Entertainment', 'PlayStation', 1997);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (95, 'Quake II', 'First-person shooter', 'Activision', 'PC', 1997);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (96, 'Star Fox 64', 'Shoot \'em up', 'Nintendo', 'Nintendo 64', 1997);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (97, 'Star Wars Jedi Knight: Dark Forces II', 'First-person shooter', 'LucasArts', 'PC', 1997);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (98, 'Tekken 3', 'Fighting', 'Namco', 'Arcade', 1997);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (99, 'Ultima Online', 'MMORPG', 'Electronic Arts', 'PC', 1997);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (100, 'Dance Dance Revolution', 'Rhythm', 'Konami', 'Arcade', 1998);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (101, 'Fallout 2', 'Role-playing', 'Interplay Entertainment', 'PC', 1998);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (102, 'Grim Fandango', 'Adventure', 'LucasArts', 'PC', 1998);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (103, 'Half-Life', 'First-person shooter', 'Sierra Studios', 'PC', 1998);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (104, 'The Legend of Zelda: Ocarina of Time', 'Action-adventure', 'Nintendo', 'Nintendo 64', 1998);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (105, 'Metal Gear Solid', 'Stealth', 'Konami', 'PlayStation', 1998);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (106, 'Panzer Dragoon Saga', 'Role-playing', 'Sega', 'Sega Saturn', 1998);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (107, 'Resident Evil 2', 'Survival horror', 'Capcom', 'PlayStation', 1998);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (108, 'Soulcalibur', 'Fighting', 'Namco', 'Arcade', 1998);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (109, 'StarCraft', 'Real-time strategy', 'Blizzard Entertainment', 'PC', 1998);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (110, 'Thief: The Dark Project', 'Stealth', 'Eidos Interactive', 'PC', 1998);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (111, 'Age of Empires II', 'Real-time strategy', 'Microsoft', 'PC', 1999);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (112, 'EverQuest', 'MMORPG', 'Sony Online Entertainment', 'PC', 1999);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (113, 'Homeworld', 'Real-time strategy', 'Sierra Studios', 'PC', 1999);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (114, 'Planescape: Torment', 'Role-playing', 'Interplay Entertainment', 'PC', 1999);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (115, 'Quake III: Arena', 'First-person shooter', 'Activision', 'PC', 1999);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (116, 'Shenmue', 'Adventure', 'Sega', 'Dreamcast', 1999);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (117, 'Silent Hill', 'Survival horror', 'Konami', 'PlayStation', 1999);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (118, 'System Shock 2', 'First-person shooter', 'Electronic Arts', 'PC', 1999);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (119, 'Unreal Tournament', 'First-person shooter', 'GT Interactive', 'PC', 1999);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (120, 'Baldur\'s Gate II: Shadows of Amn', 'Role-playing', 'Black Isle Studios', 'PC', 2000);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (121, 'Counter-Strike', 'First-person shooter', 'Valve', 'PC', 2000);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (122, 'Deus Ex', 'Action role-playing', 'Eidos Interactive', 'PC', 2000);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (123, 'Diablo II', 'Action role-playing', 'Blizzard Entertainment', 'PC', 2000);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (124, 'Jet Set Radio', 'Platform', 'Sega', 'Dreamcast', 2000);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (125, 'The Legend of Zelda: Majora\'s Mask', 'Action-adventure', 'Nintendo', 'Nintendo 64', 2000);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (126, 'The Sims', 'Life simulation', 'Electronic Arts', 'PC', 2000);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (127, 'Thief II: The Metal Age', 'Stealth', 'Eidos Interactive', 'PC', 2000);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (128, 'Tony Hawk\'s Pro Skater 2', 'Sports', 'Activision', 'PlayStation', 2000);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (129, 'Advance Wars', 'Turn-based tactics', 'Nintendo', 'Game Boy Advance', 2001);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (130, 'Animal Crossing', 'Life simulation', 'Nintendo', 'GameCube', 2001);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (131, 'Devil May Cry', 'Action-adventure', 'Capcom', 'PlayStation 2', 2001);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (132, 'Final Fantasy X', 'Role-playing', 'Square', 'PlayStation 2', 2001);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (133, 'Gran Turismo 3: A-Spec', 'Racing', 'Sony Computer Entertainment', 'PlayStation 2', 2001);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (134, 'Grand Theft Auto III', 'Action-adventure', 'Rockstar Games', 'PlayStation 2', 2001);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (135, 'Halo: Combat Evolved', 'First-person shooter', 'Microsoft Game Studios', 'Xbox', 2001);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (136, 'Ico', 'Action-adventure', 'Sony Computer Entertainment', 'PlayStation 2', 2001);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (137, 'Ikaruga', 'Shoot \'em up', 'Treasure', 'Arcade', 2001);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (138, 'Max Payne', 'Third-person shooter', 'Gathering of Developers', 'PC', 2001);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (139, 'Metal Gear Solid 2: Sons of Liberty', 'Stealth', 'Konami', 'PlayStation 2', 2001);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (140, 'Rez', 'Shoot \'em up', 'Sega', 'Dreamcast, PlayStation 2', 2001);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (141, 'Silent Hill 2', 'Survival horror', 'Konami', 'PlayStation 2', 2001);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (142, 'Super Smash Bros. Melee', 'Fighting', 'Nintendo', 'GameCube', 2001);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (143, 'The Elder Scrolls III: Morrowind', 'Action role-playing', 'Bethesda Softworks', 'PC', 2002);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (144, 'Grand Theft Auto: Vice City', 'Action-adventure', 'Rockstar Games', 'PlayStation 2', 2002);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (145, 'Kingdom Hearts', 'Action role-playing', 'Squaresoft', 'PlayStation 2', 2002);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (146, 'The Legend of Zelda: The Wind Waker', 'Action-adventure', 'Nintendo', 'GameCube', 2002);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (147, 'Metroid Prime', 'Action-adventure', 'Nintendo', 'GameCube', 2002);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (148, 'Soulcalibur II', 'Fighting', 'Namco', 'Arcade', 2002);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (149, 'Beyond Good & Evil', 'Action-adventure', 'Ubisoft', 'PlayStation 2', 2003);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (150, 'Max Payne 2', 'Third-person shooter', 'Rockstar Games', 'PC', 2003);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (151, 'Prince of Persia: The Sands of Time', 'Action-adventure', 'Ubisoft', 'PlayStation 2', 2003);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (152, 'Star Wars: Knights of the Old Republic', 'Role-playing', 'LucasArts', 'Xbox', 2003);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (153, 'WarioWare, Inc.: Mega Microgames!', 'Action', 'Nintendo', 'Game Boy Advance', 2003);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (154, 'Burnout 3: Takedown', 'Racing', 'Electronic Arts', 'PlayStation 2, Xbox', 2004);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (155, 'Dragon Quest VIII', 'Role-playing', 'Square Enix', 'PlayStation 2', 2004);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (156, 'Grand Theft Auto: San Andreas', 'Action-adventure', 'Rockstar Games', 'PlayStation 2', 2004);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (157, 'Half-Life 2', 'First-person shooter', 'Valve', 'PC', 2004);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (158, 'Halo 2', 'First-person shooter', 'Microsoft Game Studios', 'Xbox', 2004);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (159, 'Katamari Damacy', 'Action', 'Namco', 'PlayStation 2', 2004);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (160, 'Metal Gear Solid 3: Snake Eater', 'Stealth', 'Konami', 'PlayStation 2', 2004);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (161, 'Rome: Total War', 'Strategy', 'Activision', 'PC', 2004);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (162, 'World of Warcraft', 'MMORPG', 'Blizzard Entertainment', 'PC', 2004);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (163, 'Civilization IV', 'Turn-based strategy', '2K Games', 'PC', 2005);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (164, 'Devil May Cry 3: Dante\'s Awakening', 'Action-adventure', 'Capcom', 'PlayStation 2', 2005);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (165, 'God of War', 'Action-adventure', 'Sony Computer Entertainment', 'PlayStation 2', 2005);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (166, 'Guitar Hero', 'Rhythm', 'RedOctane', 'PlayStation 2', 2005);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (167, 'Psychonauts', 'Platform', 'Majesco', 'PC', 2005);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (168, 'Resident Evil 4', 'Survival horror', 'Capcom', 'GameCube', 2005);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (169, 'Shadow of the Colossus', 'Action-adventure', 'Sony Computer Entertainment', 'PlayStation 2', 2005);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (170, 'Tom Clancy\'s Splinter Cell: Chaos Theory', 'Stealth', 'Ubisoft', 'GameCube, PC, PlayStation 2, Xbox', 2005);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (171, 'Company of Heroes', 'Real-time strategy', 'THQ', 'PC', 2006);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (172, 'The Elder Scrolls IV: Oblivion', 'Role-playing', 'Bethesda Softworks', 'PC, Xbox 360', 2006);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (173, 'Gears of War', 'Third-person shooter', 'Microsoft Game Studios', 'Xbox 360', 2006);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (174, 'Hitman: Blood Money', 'Stealth', 'Eidos Interactive', 'PC, PlayStation 2, Xbox, Xbox 360', 2006);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (175, 'Ōkami', 'Action-adventure', 'Capcom', 'PlayStation 2', 2006);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (176, 'Wii Sports', 'Sports', 'Nintendo', 'Wii', 2006);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (177, 'BioShock', 'First-person shooter', '2K Games', 'PC, Xbox 360', 2007);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (178, 'Call of Duty 4: Modern Warfare', 'First-person shooter', 'Activision', 'PC, PlayStation 3, Xbox 360', 2007);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (179, 'God of War II', 'Action-adventure', 'Sony Computer Entertainment', 'PlayStation 2', 2007);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (180, 'Halo 3', 'First-person shooter', 'Microsoft Game Studios', 'Xbox 360', 2007);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (181, 'Mass Effect', 'Action role-playing', 'Microsoft Game Studios', 'Xbox 360', 2007);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (182, 'Portal', 'Puzzle-platformer', 'Valve', 'PC, Xbox 360', 2007);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (183, 'Rock Band', 'Rhythm', 'MTV Games', 'PlayStation 3, Xbox 360', 2007);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (184, 'Super Mario Galaxy', 'Platform', 'Nintendo', 'Wii', 2007);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (185, 'Team Fortress 2', 'First-person shooter', 'Valve', 'PC', 2007);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (186, 'Braid', 'Puzzle-platformer', 'Microsoft Game Studios', 'Xbox 360', 2008);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (187, 'Burnout Paradise', 'Racing', 'Electronic Arts', 'PC, PlayStation 3, Xbox 360', 2008);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (188, 'Dead Space', 'Survival horror', 'Electronic Arts', 'PlayStation 3, Xbox 360', 2008);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (189, 'Fallout 3', 'Action role-playing', 'Bethesda Softworks', 'PC, PlayStation 3, Xbox 360', 2008);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (190, 'Gears of War 2', 'Third-person shooter', 'Microsoft Game Studios', 'Xbox 360', 2008);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (191, 'Grand Theft Auto IV', 'Action-adventure', 'Rockstar Games', 'PlayStation 3, Xbox 360', 2008);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (192, 'Left 4 Dead', 'First-person shooter', 'Valve', 'PC', 2008);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (193, 'LittleBigPlanet', 'Platform', 'Sony Computer Entertainment', 'PlayStation 3', 2008);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (194, 'Persona 4', 'Role-playing', 'Atlus', 'PlayStation 2', 2008);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (195, 'Rock Band 2', 'Rhythm', 'MTV Games', 'Xbox 360', 2008);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (196, 'Spelunky', 'Platform', 'Derek Yu', 'PC', 2008);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (197, 'Street Fighter IV', 'Fighting', 'Capcom', 'Arcade', 2008);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (198, 'Valkyria Chronicles', 'Tactical role-playing', 'Sega', 'PlayStation 3', 2008);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (199, 'Assassin\'s Creed II', 'Action-adventure', 'Ubisoft', 'PlayStation 3, Xbox 360', 2009);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (200, 'Batman: Arkham Asylum', 'Action-adventure', 'Warner Bros. Interactive Entertainment', 'PlayStation 3, Xbox 360', 2009);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (201, 'Bayonetta', 'Action', 'Sega', 'PlayStation 3, Xbox 360', 2009);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (202, 'Dragon Age: Origins', 'Role-playing', 'Electronic Arts', 'PC, PlayStation 3, Xbox 360', 2009);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (203, 'Left 4 Dead 2', 'First-person shooter', 'Valve', 'PC, Xbox 360', 2009);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (204, 'Uncharted 2: Among Thieves', 'Action-adventure', 'Sony Computer Entertainment', 'PlayStation 3', 2009);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (205, 'Limbo', 'Platform', 'Microsoft Game Studios', 'Xbox 360', 2010);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (206, 'Mass Effect 2', 'Action role-playing', 'Electronic Arts', 'PC, Xbox 360', 2010);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (207, 'Red Dead Redemption', 'Action-adventure', 'Rockstar Games', 'PlayStation 3, Xbox 360', 2010);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (208, 'Rock Band 3', 'Rhythm', 'MTV Games', 'PlayStation 3, Xbox 360, Wii, Nintendo DS', 2010);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (209, 'StarCraft II: Wings of Liberty', 'Real-time strategy', 'Blizzard Entertainment', 'PC', 2010);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (210, 'Super Mario Galaxy 2', 'Platform', 'Nintendo', 'Wii', 2010);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (211, 'Super Meat Boy', 'Platform', 'Team Meat', 'Xbox 360', 2010);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (212, 'Batman: Arkham City', 'Action-adventure', 'Warner Bros. Interactive Entertainment', 'PlayStation 3, Xbox 360', 2011);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (213, 'Dark Souls', 'Action role-playing', 'Namco Bandai Games', 'PlayStation 3, Xbox 360', 2011);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (214, 'The Elder Scrolls V: Skyrim', 'Action role-playing', 'Bethesda Softworks', 'PC, PlayStation 3, Xbox 360', 2011);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (215, 'Minecraft', 'Sandbox', 'Mojang', 'PC', 2011);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (216, 'Portal 2', 'Puzzle-platformer', 'Valve', 'PC, PlayStation 3, Xbox 360', 2011);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (217, 'Dishonored', 'Stealth', 'Bethesda Softworks', 'PC, PlayStation 3, Xbox 360', 2012);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (218, 'Journey', 'Adventure', 'Sony Computer Entertainment', 'PlayStation 3', 2012);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (219, 'The Walking Dead', 'Adventure', 'Telltale Games', 'PC, PlayStation 3, Xbox 360', 2012);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (220, 'Dota 2', 'MOBA', 'Valve', 'PC', 2013);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (221, 'Grand Theft Auto V', 'Action-adventure', 'Rockstar Games', 'PlayStation 3, Xbox 360', 2013);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (222, 'The Last of Us', 'Action-adventure', 'Sony Computer Entertainment', 'PlayStation 3', 2013);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (224, 'Bloodborne', 'Action role-playing', 'Sony Computer Entertainment', 'PlayStation 4', 2015);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (225, 'The Witcher III: Wild Hunt', 'Action role-playing', 'CD Projekt', 'PC, PlayStation 4, Xbox One', 2015);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (226, 'Inside', 'Platform', 'Playdead', 'Xbox One', 2016);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (227, 'Overwatch', 'First-person shooter', 'Blizzard Entertainment', 'PC, PlayStation 4, Xbox One', 2016);
INSERT INTO `game` (`id`, `name`, `genre`, `publisher`, `original_platform`, `released_year`) VALUES (228, 'The Legend of Zelda: Breath of the Wild', 'Action-adventure', 'Nintendo', 'Nintendo Switch, Wii U', 2017);

COMMIT;

