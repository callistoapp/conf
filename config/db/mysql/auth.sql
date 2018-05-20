use auth

CREATE TABLE users (
  id INTEGER AUTO_INCREMENT,
  username VARCHAR(255) UNIQUE,
  password VARCHAR(255),
  email VARCHAR(255) UNIQUE,
  githubId INTEGER UNIQUE,
  googleId VARCHAR(255) UNIQUE,
  avatar VARCHAR(255),
  firstname VARCHAR(255),
  lastname VARCHAR(255),
  fullname VARCHAR(255),
  verified_email TINYINT(1),
  PRIMARY KEY (id)
);
