DROP DATABASE IF EXISTS library;
CREATE DATABASE library CHARACTER SET 'utf8';
USE library;

CREATE TABLE lb_book(
  bk_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  bk_title VARCHAR(100) NOT NULL,
  bk_author VARCHAR(50) NOT NULL,
  bk_release VARCHAR(50) NOT NULL UNIQUE,
  bk_category VARCHAR(30) NOT NULL,
  bk_availability VARCHAR(30) NULL,
  PRIMARY KEY (bk_id)
)
ENGINE=InnoDB;

INSERT INTO lb_book(bk_title, bk_author, bk_release, bk_category, bk_availability)
VALUES
("L'Étranger", "Albert Camus", "1942", "Roman", "Emprunter"),
("Hamlet", "William Shakespeare", "1603", "Tragédie", "Disponible"),
("Faust", "	Johann Wolfgang von Goethe", "1808", "Tragédie", "Emprunter"),
("Odyssée", "Homère", "	850-750 av. J.-C.", "Épopée", "Disponible"),
("Moby Dick", "Herman Melville", "1851", "Roman", "Emprunter");

CREATE TABLE lb_user(
  lb_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  lb_gender CHAR(1) NOT NULL,
  lb_lastname VARCHAR(50) NOT NULL,
  lb_firstname VARCHAR(50) NOT NULL,
  lb_email VARCHAR(50) NOT NULL,
  lb_city VARCHAR(50) NOT NULL,
  lb_phone int NOT NULL,
  lb_num VARCHAR(100) NOT NULL,
  book_id INT UNSIGNED NULL,
  PRIMARY KEY (lb_id),
  FOREIGN KEY (book_id) REFERENCES lb_book(bk_id)
)
ENGINE=InnoDB;

INSERT INTO lb_user(lb_gender, lb_lastname, lb_firstname, lb_email, lb_city, lb_phone, lb_num, book_id)
VALUES
("M", "Kouassi", "Duchaîne", "kouassi.duchaine@gmail.com", "Vernon", "0658037889", "AZERTY123", 1),
("F", "Lerouxel", "Aurélie", "lerouxel.aruelie@gmail.com", "Evreux", "0645875610", "QWERTY987", 3),
("M", "Caramello", "Dimitri", "caramelo.dimitri@gmail.com", "Rouen", "0601548954", "POIU654", 5),
("M", "Chemin", "Antoine", "chemin.antoine@gmail.com", "Rouen", "0654871230", "MLKJ321", NULL);
