//DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
  pla_id INT PRIMARY KEY AUTO_INCREMENT,
  pla_plano VARCHAR(20) NOT NULL,
  pla_valor DECIMAL(3,2) NOT NULL
) engine = InnoDB;

CREATE TABLE usuarios(
  usu_id INT PRIMARY KEY AUTO_INCREMENT,
  usu_nome VARCHAR(50) NOT NULL,
  usu_idade TINYINT NOT NULL,
  pla_id INT NOT NULL,

  CONSTRAINT FK_PLANOS_USUARIOS FOREIGN KEY (pla_id) REFERENCES planos(pla_id)
) engine = InnoDB;

CREATE TABLE artistas(
  art_id INT PRIMARY KEY AUTO_INCREMENT,
  art_nome VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE seguidores (
  art_id INT NOT NULL,
  usu_id INT NOT NULL,

  CONSTRAINT FK_ARTISTAS_SEGUIDORES FOREIGN KEY (art_id) REFERENCES artistas(art_id),
  CONSTRAINT FK_USUARIOS_SEGUIDORES FOREIGN KEY (usu_id) REFERENCES usuarios(usu_id),
  CONSTRAINT PK_SEGUIDORES PRIMARY KEY (art_id,usu_id)
) engine = InnoDB;

CREATE TABLE albuns(
  alb_id INT PRIMARY KEY AUTO_INCREMENT,
  alb_nome VARCHAR(100) NOT NULL,

  art_id INT NOT NULL,

  CONSTRAINT FK_ARTISTAS_ALBUNS FOREIGN KEY (art_id) REFERENCES artistas(art_id)
) engine = InnoDB;

CREATE TABLE cancoes(
  can_id INT PRIMARY KEY AUTO_INCREMENT,
  can_nome VARCHAR(100) NOT NULL,

  alb_id INT NOT NULL,

  CONSTRAINT ALBUNS_CANCOES FOREIGN KEY (alb_id) REFERENCES albuns(alb_id)
) engine = InnoDB;

CREATE TABLE historico (
  can_id INT NOT NULL,
  usu_id INT NOT NULL,

  CONSTRAINT FK_CANCOES_HISTORICO FOREIGN KEY (can_id) REFERENCES cancoes(can_id),
  CONSTRAINT FK_USUARIOS_HISTORICO FOREIGN KEY (usu_id) REFERENCES usuarios(usu_id),
  CONSTRAINT PK_HISTORICO PRIMARY KEY (can_id,usu_id)
) engine = InnoDB;

USE SpotifyClone;

INSERT INTO planos (pla_plano, pla_valor) VALUES
  ("Gratuito", 0),
  ("Familiar", 7.99),
  ("Universitário", 5.99);

  INSERT INTO usuarios (usu_nome, usu_idade, pla_id) VALUES
  ("Thati", 23, 1),
  ("Cintia", 35, 2),
  ("Bill", 20, 3),
  ("Roger", 45, 1);

INSERT INTO artistas (art_nome) VALUES
  ("Walter Phoenix"),
  ("Peter Strong"),
  ("Lance Day"),
  ("Freedie Shannon");

INSERT INTO albuns (alb_nome, art_id) VALUES
  ("Envious", 1),
  ("Exuberant", 1),
  ("Hallowed Steam", 2),
  ("Incandescent", 3),
  ("Temporary Culture", 4);

INSERT INTO cancoes (can_nome, alb_id) VALUES
  ("Soul For Us", 1),
  ("Reflections Of Magic", 1),
  ("Dance With Her Own", 1),
  ("Troubles Of My Inner Fire", 2),
  ("Time Fireworks", 2),
  ("Magic Circus", 3),
  ("Honey, So Do I", 3),
  ("Sweetie, Let's Go Wild", 3),
  ("She Knows", 3),
  ("Fantasy For Me", 4),
  ("Celebration Of More", 4),
  ("Rock His Everything", 4),
  ("Home Forever", 4),
  ("Diamond Power", 4),
  ("Honey, Let's Be Silly", 4),
  ("Thang Of Thunder", 5),
  ("Words Of Her Life", 5),
  ("Without My Streets", 5);

INSERT INTO seguidores (art_id, usu_id) VALUES
  (1, 1),
  (4, 1),
  (3, 1),
  (1, 2),
  (3, 2),
  (2, 3),
  (1, 3),
  (4, 4);

INSERT INTO historico (can_id, usu_id) VALUES
  (1, 1),
  (6, 1),
  (14, 1),
  (16, 1),
  (13, 2),
  (17, 2),
  (2, 2),
  (15, 2),
  (4, 3),
  (16, 3),
  (6, 3),
  (3, 4),
  (18, 4),
  (11, 4);
  
SELECT * FROM SpotifyClone.albuns;
SELECT * FROM SpotifyClone.artistas;
SELECT * FROM SpotifyClone.cancoes;
SELECT * FROM SpotifyClone.planos;
SELECT * FROM SpotifyClone.usuarios;
SELECT * FROM SpotifyClone.historico;
SELECT * FROM SpotifyClone.seguidores;
